---
layout: post
status: publish
published: true
title: Free SMS service notifications using Google Calendar
author: dan
author_login: admin
author_email: dan@danwalmsley.com
author_url: http://danwalmsley.com
wordpress_id: 151
wordpress_url: http://www.danwalmsley.com/?p=151
date: 2008-09-23 07:14:24.000000000 -07:00
categories:
- General
- Programming
- Articles
tags:
- sms java google calendar api atom app service monitoring
comments:
- id: 15702
  author: Salinda Hettiarachch
  author_email: h.salinda@gmail.com
  author_url: ''
  date: !binary |-
    MjAwOC0xMS0xMyAwMjo0NDo0NSAtMDgwMA==
  date_gmt: !binary |-
    MjAwOC0xMS0xMyAwOTo0NDo0NSAtMDgwMA==
  content: ! "Hai Dan,\r\nI tried your code sample. But i got problem with\r\ncom.google.gdata.data.calendar.CalendarEventEntry
    jar file.\r\nIt doesn't show any method to call like\r\n\r\nsetTitle\r\nsetContent\r\n\r\nSo
    i get compilation error"
- id: 18645
  author: Liam Bennett
  author_email: liam@econfirm.com.au
  author_url: http://www.econfirm.com.au
  date: !binary |-
    MjAwOS0wMS0wNSAwNDoyNzo0OSAtMDgwMA==
  date_gmt: !binary |-
    MjAwOS0wMS0wNSAxMToyNzo0OSAtMDgwMA==
  content: ! "Hey Dan,\r\n\r\nWe should be able to sort you out. We have a two way
    SMS system that we have had going for just over a year. We set personal users
    up with free SMS on a case by case basis. There is a pretty simple HTTP API to
    use as well.\r\n\r\nOur phone number is on the website (www.econfirm.com.au) -
    drop us a line and we'll see if we can help. \r\n\r\nCheers\r\nLiam"
---
Today I had a small revelation.

I was wracking my brains trying to figure out the SMS messaging provider to use to send myself service outage notifications for my clients' web sites. Given that I have just a handful of clients so far, it makes no sense to use a provider that requires a minimum monthly or yearly spend.

Ideally of course, I'd like to spend nothing at all, and in exasperation I finally threw my hands in the air (they're detachable) and whined: "Google sends SMS's for free - why is it so hard for everyone else?"

(answer: not everyone has billions of dollars)

And then came the revelation: Why not create a command-line tool that uses Google's Calendar API to create events 6 minutes in the future that have an SMS notification set for 5 minutes prior to launch? That way, within a minute you get a notification sent to your phone for free within 1 minute. Sweet!

So, here's the code (it's in Java... sorry)
<code>
/**
 * Simple command-line notification command that uses Google Calendar ATOM API to create
 * a single event 6 minutes in the future with a 5 minute SMS reminder
 *
 * @author Daniel Walmsley
 *
 */

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Date;
import java.util.List;

import com.google.gdata.client.calendar.CalendarService;
import com.google.gdata.data.DateTime;
import com.google.gdata.data.PlainTextConstruct;
import com.google.gdata.data.calendar.CalendarEntry;
import com.google.gdata.data.calendar.CalendarEventEntry;
import com.google.gdata.data.calendar.CalendarFeed;
import com.google.gdata.data.extensions.Reminder;
import com.google.gdata.data.extensions.When;
import com.google.gdata.data.extensions.Reminder.Method;
import com.google.gdata.util.AuthenticationException;
import com.google.gdata.util.ServiceException;

/**
 * This is a test template
 */

public class GCalNotifier {

	public static void main(String[] args) {

		/**
		 * Command line args:
		 *
		 * username
		 * password
		 * calendar name (e.g. "Notifications")
		 * TimeZone offset (in hours)
		 * event start offset (in minutes)
		 * event end offset (in minutes)
		 * title
		 * description
		 */

		try {

			// Create a new Calendar service
			CalendarService myService = new CalendarService("GCal Event Notifier");
			myService.setUserCredentials(args[0], args[1]);

			String calendarName = args[2];
			Long tzOffset = new Double(Double.parseDouble(args[3])).longValue() * 60 * 60 * 1000;
			Long startOffset = new Integer(Integer.parseInt(args[4])).longValue() * 60 * 1000;
			Long endOffset = new Integer(Integer.parseInt(args[5])).longValue() * 60 * 1000;
			String title = args[6];
			String description = args[7];

			// Get a list of all entries
			URL metafeedUrl = new URL(
					"http://www.google.com/calendar/feeds/default/allcalendars/full");
			System.out.println("Getting Calendar entries...\n");
			CalendarFeed resultFeed = myService.getFeed(metafeedUrl,
					CalendarFeed.class);
			List<CalendarEntry> entries = resultFeed.getEntries();
			for (int i = 0; i < entries.size(); i++) {
				CalendarEntry entry = entries.get(i);
				String currCalendarName = entry.getTitle().getPlainText();
				System.out.println("\t" + currCalendarName);

				if (currCalendarName.equals(calendarName)) {
					sendDowntimeAlert(myService, entry,
							title, description, startOffset, endOffset, tzOffset);
				}
			}
			System.out.println("\nTotal Entries: " + entries.size());

		} catch (AuthenticationException e) {
			e.printStackTrace();
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (ServiceException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private static void sendDowntimeAlert(CalendarService myService,
			CalendarEntry entry, String title, String description, Long startOffset, Long endOffset, Long tzOffset) throws IOException,
			ServiceException {

		String postUrlString = entry.getLink("alternate", "application/atom+xml").getHref();

		URL postUrl = new URL(postUrlString);//was: "http://www.google.com/calendar/feeds/jo@gmail.com/private/full"

		CalendarEventEntry myEntry = new CalendarEventEntry();

		myEntry.setTitle(new PlainTextConstruct(title));
		myEntry.setContent(new PlainTextConstruct(description));

		Date now = new Date();

		Date startDate = new Date(now.getTime()+startOffset);
		Date endDate = new Date(now.getTime()+endOffset);

		DateTime startTime = new DateTime(startDate.getTime()+tzOffset);

		DateTime endTime = new DateTime(endDate.getTime()+tzOffset);

		When eventTimes = new When();
		eventTimes.setStartTime(startTime);
		eventTimes.setEndTime(endTime);
		myEntry.addTime(eventTimes);

		// Send the request and receive the response:
		CalendarEventEntry insertedEntry = myService.insert(postUrl, myEntry);
		System.err.println("Got response for: "+insertedEntry.getTitle().getPlainText());
		for(When when : insertedEntry.getTimes()) {
			System.err.println("When: "+when.getStartTime()+" to "+when.getEndTime());
		}

		//5 minute reminder
		Reminder reminder = new Reminder();
		reminder.setMinutes(5);
		reminder.setMethod(Method.SMS);
		insertedEntry.getReminder().add(reminder);
		insertedEntry.update();
	}
}</code>

Don't forget, you'll need to <a href="http://code.google.com/apis/gdata/client-java.html">download the Google Data APIs</a> and put their JARs in your classpath before this will work!

Personally I use this with Nagios. I always use the same args for the calendar offsets, so I've encapsulated most of my settings (except title and body) in a script.
<code>
#!/bin/sh

export SCRIPTDIR=/opt/calAlert
export USERNAME=username@gmail.com
export PW=mySecurePassword
export CAL=Notifications
export TZOFFSET=10
export STARTOFFSET=7
export ENDOFFSET=12
export TITLE=$1
export BODY=$2

#export CURRDIR=`pwd`
export CLASSPATH="${SCRIPTDIR}/calAlert.jar"
#assumes GData libs are in "libs" subdirectory of SCRIPTDIR

for jarfile in $(ls "${SCRIPTDIR}/lib")
do
    CLASSPATH="${CLASSPATH}:${SCRIPTDIR}/lib/${jarfile}"
    echo lib/${jarfile}
done

echo "CLASSPATH=${CLASSPATH}"

export CLASSPATH

java GCalNotifier ${USERNAME} ${PW} ${CAL} ${TZOFFSET} ${STARTOFFSET} ${ENDOFFSET} "${TITLE}" "${BODY}"
</code>
