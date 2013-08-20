---
layout: post
status: publish
published: true
title: Brix Rules
author: dan
author_login: admin
author_email: dan@danwalmsley.com
author_url: http://danwalmsley.com
wordpress_id: 176
wordpress_url: http://www.danwalmsley.com/?p=176
date: 2008-12-12 02:59:45.000000000 -08:00
categories:
- Programming
tags:
- brix wicket apache jackrabbit
comments: []
---
Ok, so I've been playing with <a href="http:&#47;&#47;code.google.com&#47;p&#47;brix-cms&#47;">Brix<&#47;a>, a CMS toolkit from the creators of <a href="http:&#47;&#47;wicket.apache.org">Apache Wicket<&#47;a> that uses <a href="http:&#47;&#47;jackrabbit.apache.org">Apache Jackrabbit<&#47;a> as its content repository.

And it rules.

Jackrabbit (a JCR implementation, i.e. a hierarchical repository for all sorts of content) is maturing fast, with 1.5.0 hot off the presses. It's performance is really quite good in my simple tests (most page loads creating just one highly optimised database hit).

Wicket is also about to take a great leap, thanks to 1.4's generics helping everyone keep their code type-safe.

Brix's own architecture is fascinating. It currently has a very simple GUI, but don't let that fool you - there's a lot of hidden power underneath, and the code is very clean and well-factored (if under-commented in parts...)

The combo is a winner, so I'm actually switching the bulk of my own CMS over to Brix as of today. Lots of work, but I get the feeling it'll all be worthwhile.
