---
layout: post
status: publish
published: true
title: Virtualising Magnolia CMS
author: dan
author_login: admin
author_email: dan@danwalmsley.com
author_url: http://danwalmsley.com
wordpress_id: 108
wordpress_url: http://www.danwalmsley.com/2007/10/09/virtualising-magnolia-cms/
date: 2007-10-09 18:59:10.000000000 -07:00
categories:
- General
- Programming
tags: []
comments: []
---
In a sharp left-turn for the danwalmsley.com ouvre, what follows is instructions for virtualising Magnolia CMS. Magnolia is an open-source Content Management system available in both community and enterprise versions, and is elegant and easy-to-use.

If you want to deploy Magnolia for multiple clients across multiple virtual domains hosted through a single instance of Apache HTTPD and a single instance of Apache Tomcat, read on.

<h2>Virtualising Magnolia<&#47;h2>

Virtualises magnolia for an apache virtual host under &#47; for root and &#47;admin for admin stuff

What you get:
<ul>
<li>myclient.com: magnolia public content (i.e. everything normally under &#47;magnoliaPublic)<&#47;li>
<li>myclient.com&#47;admin: magnolia authoring interface (i.e. everything normally under &#47;magnoliaAuthor)<&#47;li>
<&#47;ul>

Variables:
$CLIENT = client name, e.g. myclient
$CLIENT_HOSTNAME = client host name to be proxied, e.g. myclient.com
$CLIENT_PORT = selected port on which Tomcat should host the site, e.g. 8082. 
$TOMCAT_HOME = installation directory of TOMCAT

<h3>Tomcat Config<&#47;h3>

mkdir $TOMCAT_HOME&#47;webapps_$CLIENT

unzip magnoliaPublic.war to webapps_$CLIENT&#47;ROOT
unzip magnoliaAuthor.war to webapps_$CLIENT&#47;admin

cd $TOMCAT_HOME&#47;conf&#47;Catalina

mkdir $CLIENT_HOSTNAME
(e.g. mkdir myclient.com)

edit $TOMCAT_HOME&#47;conf&#47;server.xml to include the following elements:

<pre class="prettyprint><!--<![CDATA[
<!-- connector under Engine element , adjust port and proxyName as suitable for forwarded connections from Apache -->
<Connector port="$CLIENT_PORT"
               proxyName="$CLIENT_HOSTNAME"
               maxThreads="150" minSpareThreads="25" maxSpareThreads="75"
               enableLookups="false"
               acceptCount="100" debug="0" connectionTimeout="20000"
               proxyPort="80" disableUploadTimeout="true" &#47;>

<!-- host goes under Engine entry -->
      <Host name="$CLIENT_HOSTNAME" debug="0" appBase="webapps_$CLIENT" unpackWARs="true" autoDeploy="true"
        xmlValidation="false" xmlNamespaceAware="false">
        <!-- do SSO for this container -->
        <Valve className="org.apache.catalina.authenticator.SingleSignOn"
                   debug="0"&#47;>

      <&#47;Host>
]]>--><&#47;pre>

<h3>Configure Apache<&#47;h3>
Enable mod_proxy

Create a config, $CLIENT.conf:
<pre class="prettyprint"><![CDATA[
<VirtualHost *>
    ServerName $CLIENT_HOSTNAME

    ProxyRequests Off
    <Directory proxy:*>
        Order deny,allow
        Allow from all
    <&#47;Directory>

    ProxyPass &#47; http:&#47;&#47;localhost:$CLIENT_PORT&#47;
    ProxyPassReverse &#47; http:&#47;&#47;localhost:$CLIENT_PORT&#47;

    <Location &#47;>
        Order allow,deny
        Allow from all
    <&#47;Location>
<&#47;VirtualHost>
]]><&#47;pre>
