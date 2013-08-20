---
layout: post
status: publish
published: true
title: Git in one minute
author: dan
author_login: admin
author_email: dan@danwalmsley.com
author_url: http://danwalmsley.com
wordpress_id: 324
wordpress_url: http://www.danwalmsley.com/?p=324
date: 2009-10-05 22:12:47.000000000 -07:00
categories:
- Programming
- Nerdy
tags: []
comments:
- id: 31092
  author: the trav
  author_email: not@telling.com
  author_url: ''
  date: !binary |-
    MjAwOS0xMC0wNiAxNzowODoxNiAtMDcwMA==
  date_gmt: !binary |-
    MjAwOS0xMC0wNyAwMDowODoxNiAtMDcwMA==
  content: ! "I started using git for open source stuff not long ago, it's pretty
    rad.  \r\nHave you checked out mercurial as all?  I'm told it's approximately
    the same feature wise, but haven't examined it."
- id: 31093
  author: dan
  author_email: dan@danwalmsley.com
  author_url: http://danwalmsley.com
  date: !binary |-
    MjAwOS0xMC0wNiAyMDozODoyMCAtMDcwMA==
  date_gmt: !binary |-
    MjAwOS0xMC0wNyAwMzozODoyMCAtMDcwMA==
  content: I saw that Mercurial was adopted by Google, but I haven't used it. It includes
    Subversion emulation features and has a nicer command line interface. I find git
    to smell strongly of geek, and until recently I haven't had the mental energy
    (or need) to really get down-and-dirty with it. However, so many great open source
    projects are now moving to git that I have a much stronger incentive to learn
    it than the cleaner-and-nicer mercurial.
---
Based on notes from a recent BarCamp, here's my one-minute introduction to Git, a distributed revision control system (a system for managing collaborative changes to files, usually used for software development). This is probably only useful to someone who's already a programmer and already trying to use git, as a kind of cheat-sheet.
<h2>git notes</h2>
Links:
<ul>
	<li><a href="http://xrl.us/bfjzz6"><strong>Git Notes</strong></a></li>
	<li><a href="http://xrl.us/bfjzzt "><strong>Alec's Git Bookmarks</strong></a></li>
</ul>
Step 1: Create a directory with files in it. Done? Good. Let's proceed. "cd" into the directory and...

<code>
$ git init <- initialise repo</code>

<code>$ git status <- tells you which files are / are-not in version control

$ git add   ... <- add files to repo, do it for each "meaningful change"

$ git commit <- commit new files to repo

$ git commit -am "Feature 1" <- commit all changed files to repo, -m "message" sets message without loading $EDITOR

$ git log <- shows recent changes

$ git config user.email "me@mydomain.com" --global <- configure email notifications

$ git branch feature1 <- create a "branch" for feature1. You should branch for each feature

$ git branch <- list branches. "*" indicates current branch

$ git checkout feature1 <- switch to branch "feature1"

$ gitk --all <- horrific-looking but useful GUI

</code>

<code>$ git merge feature1 <- merge changes on feature1 into current branch(example assumes you're on a different branch)
</code>

If you get a merge conflict, it will look like this:

<code>
Auto-merged file1
CONFLICT (content): Merge conflict in file1
Automatic merge failed; fix conflicts and then commit the result.
</code>

Hope this helps someone else as much as it helped me...
