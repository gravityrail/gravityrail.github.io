---
layout: post
status: publish
published: true
title: Synchonising Google contacts with your OS X Address Book without an iPhone
author: dan
author_login: admin
author_email: dan@danwalmsley.com
author_url: http://danwalmsley.com
wordpress_id: 287
wordpress_url: http://www.danwalmsley.com/?p=287
date: 2009-08-11 13:01:10.000000000 -07:00
categories:
- Programming
- Nerdy
tags:
- google
- iphone
- osx
comments:
- id: 30437
  author: Ben Wiles
  author_email: benjamin_wiles@hotmail.com
  author_url: ''
  date: !binary |-
    MjAwOS0wOC0yOCAwMzo1ODoyOCAtMDcwMA==
  date_gmt: !binary |-
    MjAwOS0wOC0yOCAxMDo1ODoyOCAtMDcwMA==
  content: ! "Thanks, that is very useful.  It also works if you don't have an iPhone,
    though you have to use the --username and --password tags the first time you run
    the gconsync command.  The script will work after this.\r\n\r\nSo if you don't
    have an iPhone, before running the script, run this:\r\n\r\n&#47;System&#47;Library&#47;PrivateFrameworks&#47;GoogleContactSync.framework&#47;Versions&#47;A&#47;Resources&#47;gconsync
    --sync com.google.ContactSync --username YOURUSERNAME --password YOURPASSWORD\r\n\r\nbut
    replace YOURUSERNAME with your user name (e.g. henryhiggins@gmail.com) and YOURPASSWORD
    with your password (e.g. Bygeorgeshesgotit).\r\n\r\nMagic!"
---
So, I lost my iPhone a while ago and that was annoying.

Then my annoyance doubled when I realised that my Google contacts were no longer being synced to my OS X Address Book. It turns out that Apple will only let you synchonise Google contacts when you have an iPhone connected to the system.

This would have to be the most brain-damaged mis-feature I've seen in years. It's not like my laptop has to access Google <strong>through<&#47;strong> the iPhone. It's just a completely arbitrary co-dependence of two otherwise utterly unrelated features of the computer.

Luckily there's a workaround for those who no longer have an iPhone but enjoyed the Google Contact syncing. It's a short script, so only really useful to those willing to get their hands dirty in the shell.

<pre lang="bash">
#!&#47;bin&#47;sh
echo "Syncing Contacts with Google"
&#47;System&#47;Library&#47;PrivateFrameworks&#47;GoogleContactSync.framework&#47;Versions&#47;A&#47;Resources&#47;gconsync --sync com.google.ContactSync
echo "Sync Complete"
<&#47;pre>

There - done! I suppose you could turn it into a launchd script if you're really keen, but I'm happy to just run it by hand from time-to-time. Eat it, Apple!
