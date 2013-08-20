---
layout: post
status: publish
published: true
title: End the Wicket PermGen issue
author: dan
author_login: admin
author_email: dan@danwalmsley.com
author_url: http://danwalmsley.com
wordpress_id: 114
wordpress_url: http://www.danwalmsley.com/2007/12/11/end-the-wicket-permgen-issue/
date: 2007-12-11 18:18:58.000000000 -08:00
categories:
- Programming
tags:
- java wicket apache permgen gc programming
comments:
- id: 13436
  author: Jeremy
  author_email: jelevy@gmail.com
  author_url: http://m.meetmoi.com
  date: !binary |-
    MjAwOC0wOS0wNSAwODoyOTowMCAtMDcwMA==
  date_gmt: !binary |-
    MjAwOC0wOS0wNSAxNToyOTowMCAtMDcwMA==
  content: If you can, switch to JRockit.  It's garbage collection works better then
    Suns.  You won't get it anymore.
- id: 33912
  author: Monis Iqbal
  author_email: monisiqbal@gmail.com
  author_url: http://monisiqbal.blogspot.com
  date: !binary |-
    MjAxMC0wMy0wNiAwMjo0NDoxNyAtMDgwMA==
  date_gmt: !binary |-
    MjAxMC0wMy0wNiAwOTo0NDoxNyAtMDgwMA==
  content: ! "Dan, thanks for sharing this. My Wicket app went into PermGen as well
    after running smoothly for a while. I've run into PermGen issues with Spring&#47;Hibernate
    stack but over there it occurred when we were adding more classes than the PermGen
    space permitted. Solution was obviously to increase the space but we always ran
    into PerGen while starting the application.\r\nIn contrast, the Wicket app went
    into PermGen after running for a while, which means that all classes must've been
    loaded but it was something else that caused the issue. I was wondering what scenario
    is causing PermGen in this case?\r\nAnd as you've also written: \"This happens
    because, by default, the JVM doesn&acirc;&euro;&trade;t reclaim this kind of memory.\"\r\nWhat
    do you refer 'this' to?"
---
<strong>Update<&#47;strong>: This doesn't seem to have completely fixed the problem, although perhaps I'm reloading the context to often for the garbage collector to keep up. I'll keep you posted. Anyhoo, if you read this and try it out, please let me know if it works for you.

<hr &#47;>

Anyone who develops Wicket applications and doesn't have a bajillion gigabytes of RAM (and java command line options to match) eventually runs into the "Out of PermGen Space" issue. This happens because, by default, the JVM doesn't reclaim this kind of memory.

For those of us who value the ability to hot-redeploy a context without bringing down our entire container (Geronimo, anyone?), the following JVM command-line options are invaluable:

-XX:MaxPermSize=256m \
-XX:+UseConcMarkSweepGC \
-XX:+CMSPermGenSweepingEnabled \
-XX:+CMSClassUnloadingEnabled

Note that not all of them are necessary, but if you want to reclaim PermGen space you must have the last two at least.

I hope this helps someone else out there, this was caving my head in for a while before I realised the fix was so simple.

On another note, I have now read this <a href="http:&#47;&#47;technically.us&#47;code&#47;x&#47;to-jettison-geronimo">Coderspiel article<&#47;a> and am a convert to the world of individual Jetty containers running on their own VM. Memory's cheap, right?

And, for my own 2c, Java frameworks are now so abstracted and separable that it's possible to achieve 90% of what a full J2EE stack gives you just by cherry-picking a few bits and pieces (say, Hibernate + Wicket + Jetty). That gives you a much leaner, meaner stack and you can tune the Heck out of it.

Add Maven2 to the picture and you're in pluggable, extensible, fire-and-forget heaven.
