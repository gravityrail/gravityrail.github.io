---
layout: post
status: publish
published: true
title: Jackrabbit, Wicket, Tomcat, Maven2... hell.
author: dan
author_login: admin
author_email: dan@danwalmsley.com
author_url: http://danwalmsley.com
wordpress_id: 111
wordpress_url: http://www.danwalmsley.com/2007/10/20/jackrabbit-wicket-tomcat-maven2-hell/
date: 2007-10-20 19:58:01.000000000 -07:00
categories:
- Programming
- Articles
tags:
- maven2
- jackrabbit
- jcr
- tomcat
- wicket
comments:
- id: 413
  author: Eelco
  author_email: eelco.hillenius@gmail.com
  author_url: http://chillenious.wordpress.com/
  date: !binary |-
    MjAwNy0xMC0yMCAyMjozMzowMCAtMDcwMA==
  date_gmt: !binary |-
    MjAwNy0xMC0yMSAwNTozMzowMCAtMDcwMA==
  content: Why put libs in the shared Tomcat lib dir to start with though? That's
    just asking for trouble :-)
---
What follows is lessons learned migrating to the potentially magnificent Maven2 for dependency management.

<h2>Put <scope>provided<&#47;scope> on Tomcat shared resources in your pom.xml<&#47;h2>
If you deploy jars as a shared resource on Tomcat (i.e. put the jars in common&#47;lib) then be sure to add the <scope>provided<&#47;scope> to those dependencies in your project's pom.xml. Otherwise, you'll get absolutely daft class-cast errors on shared resources like:

<code>
2007-10-21 12:42:19,425 ERROR 0-SNAPSHOT] - Servlet &#47;myExample2-1.0-SNAPSHOT threw load() exception
java.lang.ClassCastException: org.apache.jackrabbit.core.jndi.BindableRepository cannot be cast to org.apache.jackrabbit.core.jndi.BindableRepository
<&#47;code>

Hahahahahahaha I think I want to kill myself. The problem is that Tomcat's shared libraries are loaded by a different classloader than your web-app's shared libraries (which is nice in a way, because it means you can use different versions of log4j or whatever). 

So the lesson here is: Anything you want created by Tomcat and loaded by name (e.g. "jcr&#47;repository"), be sure to exclude from your WEB-INF&#47;lib when you deploy.

<h2>You can load the same shared resource by name for all apps<&#47;h2>
Deploying a Maven2-enabled app using Codehaus Mojo is a breeze... unless you want to deploy a context with it. And a context is the only way to load up named shared resources like a Jackrabbit repository. The solution? 

$TOMCAT_HOME&#47;conf&#47;Catalina&#47;$HOSTNAME&#47;context.xml.shared

The contents are loaded for all contexts. Brilliant.

<h2><i>Class blahblah<&#47;i> violates loader constraints<&#47;h2>
Oh no. This was awful. For me it was: 

<code>
2007-10-21 13:16:26,331 ERROR 0-SNAPSHOT] - Exception starting filter DataServlet
java.lang.LinkageError: Class org&#47;slf4j&#47;ILoggerFactory violates loader constraints
<&#47;code>

I needed to scour the dependencies that Maven was loading into my webapp automatically and explicitly label them as provided.
