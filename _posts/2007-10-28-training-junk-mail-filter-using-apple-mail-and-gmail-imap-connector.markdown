---
layout: post
status: publish
published: true
title: Training Junk Mail filter using Apple Mail and GMail IMAP Connector
author: dan
author_login: admin
author_email: dan@danwalmsley.com
author_url: http://danwalmsley.com
wordpress_id: 112
wordpress_url: http://www.danwalmsley.com/2007/10/28/training-junk-mail-filter-using-apple-mail-and-gmail-imap-connector/
date: 2007-10-28 01:13:01.000000000 -07:00
categories:
- Programming
- Articles
tags:
- gmail apple mail imap spam filtering
comments:
- id: 30210
  author: George
  author_email: gcoghill23@gmail.com
  author_url: ''
  date: !binary |-
    MjAwOS0wOC0xMyAwOTo1NDo0NiAtMDcwMA==
  date_gmt: !binary |-
    MjAwOS0wOC0xMyAxNjo1NDo0NiAtMDcwMA==
  content: Great tip!
---
Like most people, I get literally thousands of spam messages a month. I never see them, of course, because they're filtered out by Gmail's incredible spam filtering system.

This is all well and good if you've got a Gmail account, but what if you want Google-quality filtering for your business or other mail accounts?

Well, thanks to Gmail IMAP support, we now have a <b>massive and incredibly accurate data set</b> for training Apple Mail's junk filter. Gmail IMAP lets you browse folders other than your inbox. So once you've added it to your Apple Mail account list, simply browse to the Spam folder, select all, then mark those messages As Junk.

This simple act will train Mail's bayesian spam filtering system on everything in your GMail spam folder, no doubt instantly improving its performance somewhat. In my case, the spam folder usually has 3000-4000 messages in it, which is fairly hefty and it would certainly take a lot of clicking to get that kind of data by hand.

Thanks Google!
