---
layout: post
status: publish
published: true
title: Running Nginx with Concrete5
author: dan
author_login: admin
author_email: dan@danwalmsley.com
author_url: http://danwalmsley.com
wordpress_id: 243
wordpress_url: http://www.danwalmsley.com/?p=243
date: 2009-05-31 16:27:09.000000000 -07:00
categories:
- General
tags: []
comments:
- id: 28121
  author: Philip King
  author_email: philip.king@gmail.com
  author_url: http://www.valuemarketingservices.com
  date: !binary |-
    MjAwOS0wNi0xOCAxODoyNDozMSAtMDcwMA==
  date_gmt: !binary |-
    MjAwOS0wNi0xOSAwMToyNDozMSAtMDcwMA==
  content: Thanks for this post really saved me a lot of time.
- id: 31622
  author: Tom
  author_email: tom.nakajima@gmail.com
  author_url: ''
  date: !binary |-
    MjAwOS0xMS0xMSAwMzoxNDowOCAtMDgwMA==
  date_gmt: !binary |-
    MjAwOS0xMS0xMSAxMDoxNDowOCAtMDgwMA==
  content: ! "Thanks for the tip. Very helpful. I'll try it out.\r\nAs for Nginx not
    having competitors, from my experience there are both commercial (Zeus) and open
    source (Cherokee) web servers that are even faster.\r\n\r\nI haven't been able
    to run Cherokee with Concrete5, though. Not yet."
- id: 35082
  author: Ga&Atilde;&laquo;tan
  author_email: gaetan@pignouf.fr
  author_url: ''
  date: !binary |-
    MjAxMC0wNS0xOCAxNDo1NTo1NiAtMDcwMA==
  date_gmt: !binary |-
    MjAxMC0wNS0xOCAyMTo1NTo1NiAtMDcwMA==
  content: ! "It works for me with \r\nfastcgi_param  SCRIPT_FILENAME  &#47;var&#47;www&#47;example.com&#47;concrete5$script;"
- id: 41403
  author: andreas
  author_email: drns@foo.org
  author_url: ''
  date: !binary |-
    MjAxMS0wNS0wOSAxMTo0MjoxMiAtMDcwMA==
  date_gmt: !binary |-
    MjAxMS0wNS0wOSAxODo0MjoxMiAtMDcwMA==
  content: wow thanks! saved me time!
- id: 64029
  author: Guillaume Piot
  author_email: guillaume@cotidia.com
  author_url: http://gpiot.com
  date: !binary |-
    MjAxMi0wOS0wNCAxMDowNDowOSAtMDcwMA==
  date_gmt: !binary |-
    MjAxMi0wOS0wNCAxNzowNDowOSAtMDcwMA==
  content: ! "That is the only Nginx setup for Concrete 5 that works from all the
    articles I have seen. \r\nThank you for sharing!"
---
I've been sitting here all day bashing my head against one simple problem - getting Concrete5 working behind Nginx.

<a href="http:&#47;&#47;concrete5.org">Concrete5<&#47;a> is a beautiful, simple php-based CMS - a loud answer to the complexity of Joomla and Drupal, but of course missing some of the power too. It's perfect for web sites that aren't managed by total geeks.

Nginx is the world's fastest and most efficient web server. Hands down, no competition, no argument.

The problem I had integrating the two stems from nginx+php-fastcgi not correctly passing through the PATH_INFO variable so you can have URLs like "http:&#47;&#47;example.com&#47;index.php&#47;path&#47;to&#47;file".

The solution was to slightly alter the usual php-fastcgi parameter processing. Below is my complete config for my concrete5 site. This worked on Debian Lenny with nginx 0.7.59.

&Acirc;&nbsp;

<pre lang="C">

server {
        listen          80;
        server_name     www.example.com;
        autoindex on;

	location &#47; {
	       root &#47;var&#47;www&#47;example.com&#47;concrete5&#47;;
                index index.php;

		if (!-f $request_filename){
                   set $rule_0 1$rule_0;
               }
               if (!-d $request_filename){
                    set $rule_0 2$rule_0;
               }
               if ($rule_0 = "21"){
                    rewrite ^&#47;(.*)$ &#47;index.php&#47;$1 last;
               }
	}

        location ~ \.php($|&#47;) {
           set  $script     $uri;
            set  $path_info  "";

            if ($uri ~ "^(.+\.php)(&#47;.+)") {
              set  $script     $1;
              set  $path_info  $2;
            }
          fastcgi_pass   127.0.0.1:9000;
          fastcgi_index  index.php;
          fastcgi_param  SCRIPT_FILENAME  &#47;var&#47;www&#47;example.com&#47;concrete5$fastcgi_script_name;
	  fastcgi_param URI $uri; 
	  fastcgi_param PATH_INFO $path_info;
          include        &#47;etc&#47;nginx&#47;fastcgi.conf;
        }
}
<&#47;pre>
