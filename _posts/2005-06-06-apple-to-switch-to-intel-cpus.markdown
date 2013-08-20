---
layout: post
status: publish
published: true
title: Apple to switch to Intel CPUs? One reason why.
author: daniel
author_login: daniel
author_email: goldsounds@gmail.com
author_url: http://
wordpress_id: 204
wordpress_url: http://www.goldsounds.com/archives/2005/06/06/apple-to-switch-to-intel-cpus/
date: 2005-06-06 12:22:20.000000000 -07:00
categories:
- general
tags: []
comments:
- id: 3533
  author: Love the Mac
  author_email: ''
  author_url: http://www.lovethemac.com/apple-to-switch-to-intel-cpus-archive.html
  date: !binary |-
    MjAwNS0wNi0wNiAxOTo0MDozMiAtMDcwMA==
  date_gmt: !binary |-
    MjAwNS0wNi0wNiAwOTo0MDozMiAtMDcwMA==
  content: ! '<strong>Apple to switch to Intel CPUs?</strong>


    [Source: GoldSounds] quoted: The blogosphere is ablaze with rumours today that
    Apple plans to announce a switch to the Intel architecture at the WWDC this Monday.
    Circumstantial evidence seems to back this up, with Apple hiring ACPI BIOS developers,
    am...'
- id: 3603
  author: Desktop Computer News
  author_email: ''
  author_url: http://www.desktop-computer-news.com/apple_to_switch_to_intel_cpus_one_reason_why_archive.shtml
  date: !binary |-
    MjAwNS0wNi0yNSAwMToyMjo1NSAtMDcwMA==
  date_gmt: !binary |-
    MjAwNS0wNi0yNCAxNToyMjo1NSAtMDcwMA==
  content: ! '<strong>Apple to switch to Intel CPUs? One reason why.</strong>


    [Source: GoldSounds] quoted: They&#8217;re shifting the whole kit and kaboodle
    to Intel, developers first and then users in a year. They plan to support existing
    PowerPC apps using some very slick-looking emulation technology, but given the
    portability...'
---
<strong>Update: </strong>Okay, I was wrong-ish. They're shifting the <a href="http://www.apple.com/pr/library/2005/jun/06intel.html">whole kit and kaboodle</a> to Intel, developers first and then users in a year. They plan to support existing PowerPC apps using some very slick-looking emulation technology, but given the portability of OS X itself and the fact that Apple is giving away their cross-compiler environment to everyone who wants it, I would imagine that every app worth using will support PPC and Intel well before the consumer machines appear.

Also, given the way Steve Jobs was talking about performace-per-watt, it looks like the Intel move is much more about laptops than it is about servers.
<hr />
The blogosphere is ablaze with rumours today that Apple <a href="http://news.com.com/Apple+to+ditch+IBM,+switch+to+Intel+chips/2100-1006_3-5731398.html?tag=nefd.lede">plans to announce a switch to the Intel architecture</a> at the WWDC this Monday. Circumstantial evidence seems to <a href="http://www.livejournal.com/users/pavelmachek/7323.html">back this up</a>, with Apple hiring ACPI BIOS developers, among other moves.

There is much debate as to why Apple would engage in such a risky manouver, with most analysts citing chip delivery problems with IBM. However, I think if you want to get to the heart of the matter, one need look no further than the <a href="http://www.apple.com/xserve/">XServe</a>.

IBM, as a manufacturer of high-end servers as well as the chips that Power them (no pun intended), has a vested interest in protecting its stake in the top-end UNIX market. IBM has readily supplied the desktop-capable FX970 (G5) chips to Apple for some years now, but the high-end POWER4 and POWER5 chips remain strictly IBM only. While recent moves such as <a href="http://news.zdnet.com/2100-9584_22-5212909.html">Open Power</a> intend to portray the Power architecture as the foundation of the next generation of high-end computing, IBM is still the gatekeeper to factories and patents used to produce these chips, and has the clout to keep other players at bay should they threaten IBM's core business.

Intel and AMD, on the other hand, have a vested interest in supplying their X86-64 server chips at high volume and low price. They would willingly shower Apple in cheap Opterons and Xeons and give them a kiss for good luck. It's a totally different dynamic, and one which would enable the XServe appliance to have a serious shot at being a UNIX server contender. Apple's BSD-based OS X Server is so much easier to set up and maintain than IBM's AIX that it's almost laughable to compare them. They may have some way to go to get the high-level hot-swap and fail-over features that AIX provides, but at least by running on an Intel architecture they won't have the IBM roadblock.

My prediction: OS X Server for Opteron/Xeon, but the client OS will stay on G4/G5 for the time being.
