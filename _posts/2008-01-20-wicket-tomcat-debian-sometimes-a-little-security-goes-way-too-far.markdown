---
layout: post
status: publish
published: true
title: ! 'Wicket, Tomcat, Debian: Sometimes a little security goes way too far'
author: dan
author_login: admin
author_email: dan@danwalmsley.com
author_url: http://danwalmsley.com
wordpress_id: 116
wordpress_url: http://www.danwalmsley.com/2008/01/20/wicket-tomcat-debian-sometimes-a-little-security-goes-way-too-far/
date: 2008-01-20 17:40:51.000000000 -08:00
categories:
- Programming
tags:
- apache wicket tomcat maven debian deployment provisioni
comments:
- id: 7045
  author: Eelco Hillenius
  author_email: eelco.hillenius@gmail.com
  author_url: http://chillenious.wordpress.com/
  date: !binary |-
    MjAwOC0wMS0yMCAxODozOTo0MCAtMDgwMA==
  date_gmt: !binary |-
    MjAwOC0wMS0yMSAwMTozOTo0MCAtMDgwMA==
  content: ! "Too bad you're having troubles with Tomcat. Drop a note on the user
    list; maybe it will help others struggling with this, or maybe you'll get some
    good feedback.\r\n\r\nI'm using Jetty for both development and as our production
    server, and we never really run into much trouble (couple of times, but it was
    easy enough to patch ourselves, and the Jetty people fixed the issues quick after).\r\n\r\nJust
    wondering: what are you using IInitializer for?"
- id: 7046
  author: dan
  author_email: dan@danwalmsley.com
  author_url: http://danwalmsley.com
  date: !binary |-
    MjAwOC0wMS0yMCAxOToyOTo0NCAtMDgwMA==
  date_gmt: !binary |-
    MjAwOC0wMS0yMSAwMjoyOTo0NCAtMDgwMA==
  content: ! "IInitializer for initialising plugins to our in-progress CMS framework.
    Basically means we can drop in components which will automatically set up their
    own navigation entries, database entities, etc.\r\n\r\nMeans I can construct a
    completely customised CMS with no code and no configuration - purely dependencies.
    Want a new feature? Just add a maven dependency. \r\n\r\nSweet.\r\n\r\nOnly thing
    to do now is keep a lid on complexity and make sure our component model makes
    sense. Am thinking back to the hazy University days and design patterns and IoC
    containers..."
- id: 7082
  author: Al Maw
  author_email: wicket@almaw.com
  author_url: http://herebebeasties.com
  date: !binary |-
    MjAwOC0wMS0yMiAxMTo1MTo0MSAtMDgwMA==
  date_gmt: !binary |-
    MjAwOC0wMS0yMiAxODo1MTo0MSAtMDgwMA==
  content: ! 'There are some known security policies issues with Tomcat. Have you
    checked out the wiki article on the same: http:&#47;&#47;cwiki.apache.org&#47;WICKET&#47;java-security-permissions.html
    ?'
---
Was up until 3am last night banging my head against another frustrating go-nowhere issue deploying Wicket on Debian Etch's default Tomcat5.5. 

Apparently the latest version (5.5.20-2etch1) has additional security <strike>headaches<&#47;strike> features which prevent wicket from functioning properly out-of-the-box:
<ul>
	<li>First of all, there's still an (as-yet-unsolved) mystery around why I couldn't get Wicket to start up as a filter. Just the mysterious "ERROR: filterStart" which makes me want to feed Tomcat to angry lions. Worked around it by using Wicket in Servlet mode instead.<&#47;li>

	<li>Tomcat's juli.jar can't access WEB-INF&#47;classes&#47;logging.properties. Fixed (in sledgehammer-like way) by adding "permission java.security.AllPermission;" to &#47;etc&#47;tomcat5.5&#47;policy.d&#47;03catalina.policy, in the Juli section.<&#47;li>
	<li>Tomcat security prevents webapps from accessing all sorts of features and methods by default, including wicket.properties, methods inside shipped jars, etc. Not being a Tomcat expert, and trusting the innate security of the server and millions of lines of third party code (i.e. I'm an idiot) I again just popped a java.security.AllPermission; in appropriate spots in &#47;etc&#47;tomcat5.5&#47;policy.d&#47;04webapps.policy. Let the flames commence!<&#47;li>

<&#47;ul>

If Tomcat was a little more helpful in its error messages, this would never have been so painful. Jetty has always run my Wicket apps without complaint (though I've never tried the official Debian Jetty packages - maybe they're <strike>crippleware<&#47;strike> secure too?).

The only reason I use Tomcat at all is the remote management and deployment features, which are well-supported by Cargo. Now that these issues are out of the way (mostly) I can take another few steps towards my dream of a seamless, fire-and-forget, auto-deploying, smoke-tested, pluggable and modular web app deployment system.

Oh, and have I mentioned recently how much I LOVE IInitializer?

Bless you, Wicket. Bless you.

