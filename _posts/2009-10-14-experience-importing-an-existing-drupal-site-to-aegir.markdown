---
layout: post
status: publish
published: true
title: Experience importing an existing Drupal site to Aegir
author: dan
author_login: admin
author_email: dan@danwalmsley.com
author_url: http://danwalmsley.com
wordpress_id: 351
wordpress_url: http://www.danwalmsley.com/?p=351
date: 2009-10-14 17:47:17.000000000 -07:00
categories:
- General
- Programming
- Articles
- Nerdy
- essays
tags: []
comments:
- id: 35658
  author: Zachary
  author_email: zkrebs@gmail.com
  author_url: ''
  date: !binary |-
    MjAxMC0wOC0xNiAxNToyNTo0NyAtMDcwMA==
  date_gmt: !binary |-
    MjAxMC0wOC0xNiAyMjoyNTo0NyAtMDcwMA==
  content: Having some really bad experiences... http://github.com/omega8cc/nginx-for-drupal/issues#issue/16
    help me?
- id: 46115
  author: Bill Powell
  author_email: comments.pretzelfeast@spamgourmet.com
  author_url: http://wineskinmedia.com
  date: !binary |-
    MjAxMS0wOS0wMiAwNzoyOTo0NiAtMDcwMA==
  date_gmt: !binary |-
    MjAxMS0wOS0wMiAxNDoyOTo0NiAtMDcwMA==
  content: Thanks for sharing! Two years later, your advice came up on a search on
    imagecache and Aegir, and I could finally fix my filepaths and get images showing
    again. I thought imagecache was broken, but it was as simple as the broken filepaths.
---
<div>

(Cross-posted from the <a href="http://groups.drupal.org/node/29450">Aegir group on Drupal.org</a>. Aegir is a brilliant new framework for managing web sites built in Drupal - upgrading, migrating, enabling, disabling and so, SO much more.)

Hi all,

I just wanted to share my experience migrating an existing site to Aegir, in the hope that others will find it illuminating and it will help them avoid some of the pitfalls I encountered.

Firstly, I made sure my site was completely checked into Subversion, and then checked it out on the Aegir host in the platforms directory as "mysite-1.0". I had decided after reading the available documentation that the best way to bring an existing site into Aegir is to import the whole Drupal distro as a platform and then migrate the "default" site into another existing platform (the latter step isn't really necessary, but I wanted to avoid having dozens of platforms for all my existing sites - defeats the point of Aegir somewhat).

Secondly, and before I imported the site, I renamed the "sites/default" directory to "sites/mysite.client2.gravityrail.net". Aegir ignores the "default" site. I then created a symlink, "sites/mysite.com", because that's how Aegir does it.

Third, I imported my database. Of course.

Now it was time to import the platform in Aegir. I crossed my fingers, toes and eyes (then uncrossed my eyes because I needed them to see the screen... and my fingers because I needed to type... so at this point only my toes were ensuring good luck came my way, and clearly toes aren't enough because...)

BAM! It worked!

Wha..?

Awesome!

Time to import the site. Breathe. Breathe. It can't be this easy, can it?

It wasn't.

Okay, here I've hit my first problem. I wanted the site to have a generated alias to mysite.com, but I think I either forgot or didn't see the entry box because this wasn't baked into the generated Apache config in config/vhost.d, and my site (I later found out) wouldn't appear when the DNS got changed. Whoops!

<strong>Lesson 1</strong>: Make <em>sure</em> you enter your domain aliases when you import the site in Aegir.

Secondly, the import task failed because of a missing file on a mysqldump, "/dev/fd/3". Turns out on Debian Lenny you need to make sure you've got udev installed so the smart mysql script can create temporary devices containing mysql credentials.

<strong>Lesson 2</strong>: On Debian, make sure you have udev installed.

But my script was halting at another point now. It was complaining that I wasn't using a password for MySQL! That's weird... checked my settings.php, all seems well. Turns out the issue is that my password started with a "#" symbol. Turns out one of our components here doesn't like certain punctuation in passwords. Similar problems will occur if your password contains } or ) or various other symbols that could be interpreted as PHP/shell/MySQL delimiters of various kinds.

<strong>Lesson 3</strong>: Don't include punctuation in your passwords, for now. Hopefully this will be fixed shortly.

Ran it again. Got a bunch of permissions errors on files, typical stuff and I fixed it.

So, finally I got the migration script to run but, critically, by this point I was running it from the command line so I could see this debug output. This has ramifications later.

When the migration script completed, there were a lot of errors to do with missing packages. See, I'd assumed that drush or provision or one of the other smart tools underlying this system would detect the modules in the source platform and, if they were missing in the target platform, it would automatically download them.

Whoops, nope, turns out that's not the case, for a whole bunch of really good reasons.

<strong>Lesson 4</strong>: Make sure you have all the required packages installed on your target platform before you migrate.

At this point I decided to flex my Unix command-line muscles and concocted a simple command line to port and enable the packages. As we'll find out, I'm not as smart as I thought I was.
<div><code>cp -R source-platform/sites/all/modules target-platform/sites/all
ls target-platform/sites/all/modules | xargs -y enable</code></div>
See, this assumes there is just one module per directory name, and that the name of the module is the name of the directory. As y'all in Drupal-land know, this just ain't so. Chalk one up for Java-guy-learning-Drupal.

So, thinking I was done and readying my martini, monocle, slippers, and wallet for the inevitable glory and prestige, I pointed my browser at the site: mysite.clientX.gravityrail.net.

[GARBAGE FILLS THE SCREEN]

I dropped the martini, the monocle fell out, and my crossed-toes drew blood inside my tartan slippers as I surveyed the damage. Missing images, ill-rendered Javascript, formatting completely gone, fonts in TIMES NEW BLOODY ROMAN. This was no good, no good at all. I was building a professional site, not MySpace. Back to the typing-board.

Okay, time for a few more lessons:

<strong>Lesson 5</strong>: Copy the themes, not just the modules. I had forgotten that my site's theme was a Zen subtheme, and you can't have a subtheme without the super-theme.

<strong>Lesson 6</strong>: As above, enable all the modules you need. Though this shouldn't be necessary if the modules are actually present in the target platform when you migrate - Aegir was clearly making a good-faith effort to enable everything when I ran the migrate script.

<strong>Lesson 7</strong>: If you <strong>don't</strong> migrate using the web interface, then your site will be copied as the Aegir user, not as www-data. Then you'll find that suddenly imagecache can't create thumbnails of your images, for example. At the very least, do a "chgrp -R www-data sites/mysite.com/files". Hopefully this will be enough.

<strong>Lesson 8</strong>: There are plenty of Drupal modules that hate having their site renamed. ImageAPI / ImageCache is one of them. Moving from "default" to "mysite.com" meant that I had to go into the database (shudder) and do an "UPDATE files SET filepath = REPLACE(filepath,"sites/default","sites/mysite.com");" so imagecache could find the files. <strong>This is a design flaw in the way that Drupal or this module handles files, and multi-site should be fixed to handle it</strong>. I strongly believe no files should have their paths stored relative to the system root in a multi-site framework, for obvious reasons.

So, after fixing permissions, filepaths, enabling required modules, testing and re-testing, I had my site imported and migrated onto Pressflow 6.14.56 and working well.

Then my client changed their DNS, and the site didn't appear, and they got angry and changed their DNS back. Because on my final successful migration, Aegir rewrote my apache configuration without the Site Alias of mysite.com.

We re-launch today. Second time lucky. Aegir still has some rough edges for newbies, but I feel really excited that I finally have a consistent way of managing all my sites. Migrating your existing sites into Aegir is totally worth it, and I hope that my lessons above help a few people to get into this wonderful new world.</div>
