---
layout: post
status: publish
published: true
title: Apache Wicket on Google App Engine for Java
author: dan
author_login: admin
author_email: dan@danwalmsley.com
author_url: http://danwalmsley.com
wordpress_id: 220
wordpress_url: http://www.danwalmsley.com/?p=220
date: 2009-04-08 01:02:36.000000000 -07:00
categories:
- General
tags:
- wicket
- google
- appengine
- googleappengine
comments:
- id: 24493
  author: Garidan
  author_email: garidan@tele2.it
  author_url: http://gariboldi.blogspot.com
  date: !binary |-
    MjAwOS0wNC0wOCAxMjo0MTozNiAtMDcwMA==
  date_gmt: !binary |-
    MjAwOS0wNC0wOCAxOTo0MTozNiAtMDcwMA==
  content: ! "Marvelous ! I just read about GAE/J and searched for someone who
    tried wicket and here you are. Thanks.\r\nI think wicket is perfect for that platform.\r\nReally
    good news.\r\nthanks"
- id: 24510
  author: Al
  author_email: alinoor@islamicdesignhouse.com
  author_url: ''
  date: !binary |-
    MjAwOS0wNC0wOCAxNzozNzo0MiAtMDcwMA==
  date_gmt: !binary |-
    MjAwOS0wNC0wOSAwMDozNzo0MiAtMDcwMA==
  content: dude!!, publish the source!!
- id: 24575
  author: soma
  author_email: francisdb@gmail.com
  author_url: http://www.piiix.com
  date: !binary |-
    MjAwOS0wNC0wOSAxNDo1MjozNyAtMDcwMA==
  date_gmt: !binary |-
    MjAwOS0wNC0wOSAyMTo1MjozNyAtMDcwMA==
  content: thanks
- id: 24955
  author: Ai
  author_email: adi.ibanez@freestyleair.com
  author_url: ''
  date: !binary |-
    MjAwOS0wNC0xNiAwOTo1MTo0OCAtMDcwMA==
  date_gmt: !binary |-
    MjAwOS0wNC0xNiAxNjo1MTo0OCAtMDcwMA==
  content: ! "Hi thanks for sharing the infos!\r\n\r\nCurrently I'm having some difficulties
    whith wicket having loading the html resources.\r\n\r\nDid you change anything
    appart from the mentioned overrided methods?\r\n\r\ncheers\r\n\r\n\r\n\r\nLogs:
    \r\n\r\nApr 17, 2009 12:45:03 AM org.apache.wicket.util.resource.locator.ResourceStreamLocator
    locateByResourceFinder\r\nFINE: Attempting to locate resource 'org/gaetest/pages/HomePage.html'
    on path [folders = [], webapppaths: []]\r\nApr 17, 2009 12:45:03 AM org.apache.wicket.util.resource.locator.ResourceStreamLocator
    getResourceStream\r\nFINE: Attempting to locate resource 'org/gaetest/pages/HomePage.html'
    using classloader com.google.appengine.tools.development.IsolatedAppClassLoader@31ff23\r\nApr
    17, 2009 12:45:03 AM org.apache.wicket.util.resource.locator.ResourceStreamLocator
    getResourceStream\r\nFINE: Attempting to locate resource 'org/gaetest/pages/HomePage.html'
    using classloader com.google.appengine.tools.development.IsolatedAppClassLoader@31ff23\r\nApr
    17, 2009 12:45:03 AM org.apache.wicket.util.resource.locator.ResourceStreamLocator
    getResourceStream\r\nFINE: Attempting to locate resource 'org/gaetest/pages/HomePage.html'
    using classloader com.google.appengine.tools.development.IsolatedAppClassLoader@31ff23\r\n\r\n\r\n\r\nSEVERE:
    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\r\nApr
    17, 2009 12:45:03 AM org.apache.wicket.RequestCycle logRuntimeException\r\nSEVERE:
    Markup of type 'html' for component 'org.gaetest.pages.HomePage' not found. Enable
    debug messages for org.apache.wicket.util.resource to get a list of all filenames
    tried.: [Page class = org.gaetest.pages.HomePage, id = 0, version = 0]\r\norg.apache.wicket.markup.MarkupNotFoundException:
    Markup of type 'html' for component 'org.gaetest.pages.HomePage' not found. Enable
    debug messages for org.apache.wicket.util.resource"
- id: 28574
  author: Per
  author_email: per@artcomputer.se
  author_url: ''
  date: !binary |-
    MjAwOS0wNi0yNyAxNDozOToxNyAtMDcwMA==
  date_gmt: !binary |-
    MjAwOS0wNi0yNyAyMTozOToxNyAtMDcwMA==
  content: Really been trying this but can't get it working in the app engine. It
    works fine in Eclipse but on Google I get a 404 - so I wonder where the difference
    is.
- id: 29361
  author: Tee Bee
  author_email: ttargatt@yahoo.com
  author_url: ''
  date: !binary |-
    MjAwOS0wNy0xNCAxODo1MTozMiAtMDcwMA==
  date_gmt: !binary |-
    MjAwOS0wNy0xNSAwMTo1MTozMiAtMDcwMA==
  content: ! "Hi\r\n\r\nI agree that it works fine in Eclipse using the Google appengine
    plugin, but after deplyoying to Google the first page was ok, but trying to simulate
    some other pages I get this error: 500 Server error\r\nand the logs is: \r\n\r\nUncaught
    exception from servlet\r\ncom.google.apphosting.api.ApiProxy$RequestTooLargeException:
    The request to API call datastore_v3.Put() was too large.\r\n\r\nany idea?\r\n\r\nregards"
- id: 33286
  author: bob
  author_email: bf65@juno.com
  author_url: ''
  date: !binary |-
    MjAxMC0wMi0wMiAxOToyNTo0NSAtMDgwMA==
  date_gmt: !binary |-
    MjAxMC0wMi0wMyAwMjoyNTo0NSAtMDgwMA==
  content: ! "i had to add serialVersionUID to my wicket pages since they are stored
    in the session and serialized.  I guess they are not required by Eclipse when
    I create a wicket page.  before i did that, i was receiving an exception like:\r\n\r\njavax.servlet.ServletException:
    java.lang.RuntimeException: java.io.InvalidClassException: wicket.LoginPage; local
    class incompatible: stream classdesc serialVersionUID"
- id: 35930
  author: Problems When Deploying Working Application on Google App Engine &laquo;
    Inphina Thoughts
  author_email: ''
  author_url: http://thoughts.inphina.com/2010/09/05/problems-when-deploying-working-application-on-google-app-engine/
  date: !binary |-
    MjAxMC0wOS0wNSAwNjoyMTo0MCAtMDcwMA==
  date_gmt: !binary |-
    MjAxMC0wOS0wNSAxMzoyMTo0MCAtMDcwMA==
  content: ! '[...] use jpa for persistence in Google App engine here. Wicket does
    work with the workarounds mentioned here. For wicket application we need to enable
    sessions in app engine config [...]'
- id: 35970
  author: Generating Excel Files On Google App Engine For A Wicket Application &laquo;
    Inphina Thoughts
  author_email: ''
  author_url: http://thoughts.inphina.com/2010/09/08/generating-excel-files-on-google-app-engine-for-a-wicket-application/
  date: !binary |-
    MjAxMC0wOS0wOCAxNDoxNjoxNSAtMDcwMA==
  date_gmt: !binary |-
    MjAxMC0wOS0wOCAyMToxNjoxNSAtMDcwMA==
  content: ! '[...] We are porting an existing Wicket application on Google App Engine.
    This application uses Wicket, Spring and Hibernate. If you read will it play in
    app engine, you will notice that Wicket is semi compatible and it does work with
    workarounds. Hibernate on the other hand is incompatible and Spring is fully supported.
    We began porting this application after changing persistence to use JPA finstead
    of hibernate. We used workarounds for wicket described here. [...]'
- id: 36004
  author: Improve Performance By Using Keys Only Query on Google App Engine &laquo;
    Inphina Thoughts
  author_email: ''
  author_url: http://thoughts.inphina.com/2010/09/11/improve-performance-by-using-keys-only-query-on-google-app-engine/
  date: !binary |-
    MjAxMC0wOS0xMSAwNjoyNTo0MCAtMDcwMA==
  date_gmt: !binary |-
    MjAxMC0wOS0xMSAxMzoyNTo0MCAtMDcwMA==
  content: ! '[...] It has been around two months since we started to port an existing
    application on Google App engine. It used Hibernate for persistence, Wicket framework
    for web layer and Spring as an Ioc container. Looking at the will it play on appengine
    we had to change Hibernate to use either JPA or JDO. We decided on JPA purely
    on the basis of experience we had on JPA compared to JDO. Wicket is semi compatible
    and we made it work by the three standard workarounds described here. [...]'
- id: 36361
  author: Managing Wicket Serialization Problem On Google App Engine &laquo; Inphina
    Thoughts
  author_email: ''
  author_url: http://thoughts.inphina.com/2010/10/20/managing-wicket-serialization-problem-on-google-app-engine/
  date: !binary |-
    MjAxMC0xMC0yMCAwODoyNToyMiAtMDcwMA==
  date_gmt: !binary |-
    MjAxMC0xMC0yMCAxNToyNToyMiAtMDcwMA==
  content: ! '[...] App engine will it play suggests that if you have a wicket project
    you follow this workaround your Wicket project will start working on app engine.
    Still, one of the error you may [...]'
- id: 38991
  author: Managing Wicket Serialization Problem On Google App Engine &laquo; Making
    a better world with enterprise Java
  author_email: ''
  author_url: http://meetumaltiar.wordpress.com/2011/02/24/managing-wicket-serialization-problem-on-google-app-engine/
  date: !binary |-
    MjAxMS0wMi0yMyAyMTo1MzoxOSAtMDgwMA==
  date_gmt: !binary |-
    MjAxMS0wMi0yNCAwNDo1MzoxOSAtMDgwMA==
  content: ! '[...] App engine will it play suggests that if you have a wicket project
    you follow this workaround your Wicket project will start working on app engine.
    Still, one of the error you may [...]'
- id: 39290
  author: Improve Performance By Using Keys Only Query on Google App Engine &laquo;
    Making a better world with enterprise Java
  author_email: ''
  author_url: http://meetumaltiar.wordpress.com/2010/09/11/improve-performance-by-using-keys-only-query-on-google-app-engine/
  date: !binary |-
    MjAxMS0wMy0wNSAwMjo1MDoxOSAtMDgwMA==
  date_gmt: !binary |-
    MjAxMS0wMy0wNSAwOTo1MDoxOSAtMDgwMA==
  content: ! '[...] It has been around two months since we started to port an existing
    application on Google App engine. It used Hibernate for persistence, Wicket framework
    for web layer and Spring as an Ioc container. Looking at the will it play on appengine
    we had to change Hibernate to use either JPA or JDO. We decided on JPA purely
    on the basis of experience we had on JPA compared to JDO. Wicket is semi compatible
    and we made it work by the three standard workarounds described here. [...]'
- id: 40124
  author: Looking at MVC frameworks &laquo; cg2p
  author_email: ''
  author_url: http://cg2p.wordpress.com/2011/03/30/looking-at-mvc-frameworks/
  date: !binary |-
    MjAxMS0wMy0zMCAwNzowNzo1NCAtMDcwMA==
  date_gmt: !binary |-
    MjAxMS0wMy0zMCAxNDowNzo1NCAtMDcwMA==
  content: ! '[...] going to distract myself with this just yet though. I know it
    can work in App Engine from previous. &Acirc;&nbsp;I&#8217;m going to get some
    basic application up and running first [...]'
---
Holy smokes, that was easy. I've got a basic Wicket app running on Google App Engine in under 2 minutes.

3 small traps for the unwary. First of all, you need to enable sessions in your appengine config file.

<pre lang="xml">
    <sessions-enabled>true</sessions-enabled>
</pre>

Secondly, add the following line into your WebApplication's init() method:

<pre lang="java">
	@Override
	protected void init() {
		super.init();

		//remove thread monitoring from resource watcher
		this.getResourceSettings().setResourcePollFrequency(null);
	}
</pre>

Thirdly, override the newSessionStore() method to return HttpSessionStore, because the default second level session store uses java.io.File, which Google App Engine doesn't allow:

<pre lang="java">
	@Override
	protected ISessionStore newSessionStore()
	{
		return new HttpSessionStore(this);
//		return new SecondLevelCacheSessionStore(this, new InMemoryPageStore());
	}
</pre>

That's because Google App Engine doesn't want you spawning threads. Obvious enough.

So that's it! You're in a Wicket-land of infinite scalability...

(I'm sure there's more to it but I was excited...)

See my stupid test here: http://transitplatform.appspot.com/
