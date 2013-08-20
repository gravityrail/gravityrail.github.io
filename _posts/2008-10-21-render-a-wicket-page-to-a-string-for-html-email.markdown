---
layout: post
status: publish
published: true
title: Render a Wicket page to a string for HTML email
author: dan
author_login: admin
author_email: dan@danwalmsley.com
author_url: http://danwalmsley.com
wordpress_id: 171
wordpress_url: http://www.danwalmsley.com/?p=171
date: 2008-10-21 18:13:43.000000000 -07:00
categories:
- Programming
- Articles
tags:
- wicket
- apache
- html
- email
- java
- Programming
comments:
- id: 15315
  author: J&Atilde;&para;rn Zaefferer
  author_email: joern.zaefferer@gmail.com
  author_url: http://bassistance.de
  date: !binary |-
    MjAwOC0xMS0wNCAwOToyNToxNSAtMDgwMA==
  date_gmt: !binary |-
    MjAwOC0xMS0wNCAxNjoyNToxNSAtMDgwMA==
  content: ! "Hi Dan,\r\n\r\nthanks for the post, that seems to be exactly what I'm
    looking for.\r\n\r\nCopying the code into my app, I got a compiler error on the
    line where the WebRequest is created. Using the constructor to ServletWebRequest
    helped.\r\n\r\nNonetheless, I get only an empty string back, no clue whats going
    wrong.\r\n\r\nI'm using Wicket 1.3.5."
- id: 15316
  author: Ro
  author_email: rzechner@gmail.com
  author_url: ''
  date: !binary |-
    MjAwOC0xMS0wNCAxMDowOTo0OCAtMDgwMA==
  date_gmt: !binary |-
    MjAwOC0xMS0wNCAxNzowOTo0OCAtMDgwMA==
  content: ! "We are also using Wicket in combination with Spring. Wouldn't it be
    easier to use Spring + Velocity to generate HTML Emails? \r\n\r\nhttp://www.theserverside.com/tt/blogs/showblog.tss?id=SpringVelocityEmail\r\n\r\nAlthough
    I would prefer a solution that is more tied to Wicket, the Spring solution seems
    to be easier to grab and thus more maintainable IMHO.\r\n\r\nI never tried it
    any of the above, but will have to in the next couple of months."
- id: 15371
  author: J&Atilde;&para;rn Zaefferer
  author_email: joern.zaefferer@gmail.com
  author_url: http://bassistance.de
  date: !binary |-
    MjAwOC0xMS0wNSAwMzoyNzo0NyAtMDgwMA==
  date_gmt: !binary |-
    MjAwOC0xMS0wNSAxMDoyNzo0NyAtMDgwMA==
  content: ! "Got it working by replacing requestCycle.request() with requestCycle.getProcessor().respond(requestCycle);\r\n\r\nThanks
    for sharing!"
- id: 21307
  author: rodrigob
  author_email: rodrigo.benenson@gmail.com
  author_url: ''
  date: !binary |-
    MjAwOS0wMi0xNCAwMzoxNDo1MSAtMDgwMA==
  date_gmt: !binary |-
    MjAwOS0wMi0xNCAxMDoxNDo1MSAtMDgwMA==
  content: ! "and by changing\r\nnew WebRequest(servletRequest);\r\nto \r\nnew ServletWebRequest(servletRequest);"
- id: 27119
  author: JF
  author_email: jrompre@gmail.com
  author_url: ''
  date: !binary |-
    MjAwOS0wNS0yNyAxMjowNjoxNiAtMDcwMA==
  date_gmt: !binary |-
    MjAwOS0wNS0yNyAxOTowNjoxNiAtMDcwMA==
  content: ! "I have a similar problem - something that should be easy to do, and
    may already be available from the API (I am still usin 1.3.5).\r\n\r\nHow can
    one duplicate rendered strings? In other words, I am trying to render once but
    copy a number of times for better performance - e.g., putting a page navigator
    both at the top and bottom of the list (the bottom is simply a label generated
    from copying the rendered top one). I tried using onRendered to copy getResponse.toString()
    for later reuse, but renderComponent() throws IllegalStateException: page not
    found - even though I am adding the component to a panel as instructed by Component.renderComponent()
    - any ideas? Thx"
- id: 30464
  author: Andrew Williams
  author_email: andy@handyande.co.uk
  author_url: http://handyande.co.uk
  date: !binary |-
    MjAwOS0wOC0zMCAxMzo1MjoyMSAtMDcwMA==
  date_gmt: !binary |-
    MjAwOS0wOC0zMCAyMDo1MjoyMSAtMDcwMA==
  content: Hey guys - use wicket-test this is the framework for testing but can render
    panels or entire pages to a string. It does use a fake web application so you
    might need to hack some things if you require funky web application setups
- id: 34569
  author: Fernando
  author_email: fernando.wermus@gmail.com
  author_url: ''
  date: !binary |-
    MjAxMC0wNC0wNyAxNDozMToyNCAtMDcwMA==
  date_gmt: !binary |-
    MjAxMC0wNC0wNyAyMTozMToyNCAtMDcwMA==
  content: ! "I have some BookmarkablePageLink in the page I want to render. They
    are rendering just a part of the url, for instance\r\n\r\nwww.miapp.com/asd/asd/asd\r\n\r\nit
    renders only\r\n\r\n/asd/asd/asd\r\n\r\nwhich its wrong because users
    read it in their email program. How can I instruct BookmarkablePageLink to render
    the whole url?\r\n\r\nthanks in advance"
- id: 35092
  author: Fernando
  author_email: fernando.wermus@gmail.com
  author_url: ''
  date: !binary |-
    MjAxMC0wNS0yMCAxNjozNjo0MyAtMDcwMA==
  date_gmt: !binary |-
    MjAxMC0wNS0yMCAyMzozNjo0MyAtMDcwMA==
  content: ! "Dan,\r\n   I have to send emails from another servlet. In this case,
    I need a mock application to get it working. I try to build my own without success.
    Dummy Application says it has not attached a ServletContext. I got it from WicketTester.
    Any idea how to build mails from a servlet that is not a WicketFilter or wicket
    servlet?"
- id: 35257
  author: Torben
  author_email: berger.torben@gmail.com
  author_url: ''
  date: !binary |-
    MjAxMC0wNi0xNSAwODozNDo1NCAtMDcwMA==
  date_gmt: !binary |-
    MjAxMC0wNi0xNSAxNTozNDo1NCAtMDcwMA==
  content: ! "Hi,\r\nis there a possibility to use this code snippet for components
    (i.e. MarkupContainer) instead of bookmarkable pages? I didn't find a way to change
    this. Maybe someone can help me?"
- id: 36644
  author: Tim B&Atilde;&frac14;the
  author_email: timbuethe@gmail.com
  author_url: ''
  date: !binary |-
    MjAxMC0xMS0xNiAxMTozMTo1OCAtMDgwMA==
  date_gmt: !binary |-
    MjAxMC0xMS0xNiAxODozMTo1OCAtMDgwMA==
  content: ! "Thanks Andrew Williams for mentioning WicketTester! It's way easier,
    shorter and you don't need any web app context at all. Just do this:\r\n\r\n    WicketTester
    tester = new WicketTester();\r\n    tester.startPage(YourPage.class);\r\n    String
    s = tester.getServletResponse().getDocument();\r\n\r\nregards,\r\nTim"
- id: 43592
  author: Retrieving html from wicket components
  author_email: ''
  author_url: http://www.java-forums.org/web-frameworks/45833-retrieving-html-wicket-components.html#post218447
  date: !binary |-
    MjAxMS0wNi0yOCAwODoyMTowMiAtMDcwMA==
  date_gmt: !binary |-
    MjAxMS0wNi0yOCAxNToyMTowMiAtMDcwMA==
  content: ! '[...] the page. I have tried several example that I have found none
    of which seem to work.  I have tried Render a Wicket page to a string for HTML
    email | Dan Walmsley which returnsan empty string.  I have also reied several
    other example all of which do not work. [...]'
- id: 54400
  author: romu31
  author_email: romu31@gmail.com
  author_url: ''
  date: !binary |-
    MjAxMi0wMy0wNiAxNDoxNzoxMiAtMDgwMA==
  date_gmt: !binary |-
    MjAxMi0wMy0wNiAyMToxNzoxMiAtMDgwMA==
  content: ! "for 1.5 version ( seen it on wicket forum ) \r\n\r\nBufferedWebResponse
    bufferedWebResponse = new BufferedWebResponse(null); \r\n        webPage.getRequestCycle().setResponse(bufferedWebResponse);
    \r\n        webPage.render(); \r\n        return bufferedWebResponse.getText().toString();"
- id: 56553
  author: Render page to string in Wicket 1.5 | PHP Developer Resource
  author_email: ''
  author_url: http://www.dkphp.com/questions-2/render-page-to-string-in-wicket-1-5.html
  date: !binary |-
    MjAxMi0wNS0yMyAxODowNTo1MiAtMDcwMA==
  date_gmt: !binary |-
    MjAxMi0wNS0yNCAwMTowNTo1MiAtMDcwMA==
  content: ! '[...] we used the code referenced/listed in this StackOverflow question
    and this (currently broken but maybe fixed later) link but that code no longer
    works as a lot of those classes don&#8217;t exist in [...]'
---
Something that's very desirable to do in <a href="http://wicket.apache.org">Apache Wicket</a> is create HTML emails using Wicket's brilliant component-oriented markup.

I've been working on this problem on and off for ages -- it's tricky because of teh way that markup rendering is so deeply tied to the requestcycle, which in turn is deeply dependent on the httpservletrequest -- with good reason, too. That's where Wicket gets its autoconfiguring magic from!

So in order to use Wicket to create HTML emails, we need to fake the request/response cycle. I wrote this convenient method that renders a bookmarkable page (pageclass + pageparameters) to a string:
<pre>protected String renderPage(Class<? extends Page> pageClass, PageParameters pageParameters) {

		//get the servlet context
		WebApplication application = (WebApplication) WebApplication.get();

		ServletContext context = application.getServletContext();

		//fake a request/response cycle
		MockHttpSession servletSession = new MockHttpSession(context);
		servletSession.setTemporary(true);

		MockHttpServletRequest servletRequest = new MockHttpServletRequest(
				application, servletSession, context);
		MockHttpServletResponse servletResponse = new MockHttpServletResponse(
				servletRequest);

		//initialize request and response
		servletRequest.initialize();
		servletResponse.initialize();

		WebRequest webRequest = new WebRequest(servletRequest);

		BufferedWebResponse webResponse = new BufferedWebResponse(servletResponse);
		webResponse.setAjax(true);

		WebRequestCycle requestCycle = new WebRequestCycle(
				application, webRequest, webResponse);

		requestCycle.setRequestTarget(new BookmarkablePageRequestTarget(pageClass, pageParameters));

		try {
			requestCycle.request();

			log.warn("Response after request: "+webResponse.toString());

			if (requestCycle.wasHandled() == false) {
				requestCycle.setRequestTarget(new WebErrorCodeResponseTarget(
						HttpServletResponse.SC_NOT_FOUND));
			}
			requestCycle.detach();

		} finally {
			requestCycle.getResponse().close();
		}

		return webResponse.toString();
	}</pre>
One other thing that's desirable to do is change all relative links in the email to absolute URLs -- something that Wicket makes super-easy, if you know how. That will be the subject of my next post.
