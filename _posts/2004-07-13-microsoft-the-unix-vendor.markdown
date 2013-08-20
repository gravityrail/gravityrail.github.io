---
layout: post
status: publish
published: true
title: Microsoft the UNIX Vendor
author: daniel
author_login: daniel
author_email: goldsounds@gmail.com
author_url: http://
wordpress_id: 135
wordpress_url: http://www.goldsounds.com/archives/2004/07/13/microsoft-the-unix-vendor/
date: 2004-07-13 20:59:22.000000000 -07:00
categories:
- general
tags: []
comments: []
---
Remember a while ago, when Linux started to break through into the commercial world, and many wondered how Microsoft might respond to the threat? Some suggested MS might open-source Windows. Some wondered whether Office might ever ship for Linux. But by far the most laughable suggestion was that Microsoft might release their own version of Linux.

I've noticed something weird about Microsoft lately. I think they're giving up many of the proprietary parts of their operating systems and concentrating on the very thin slice of the API stack that produces the most money.

Microsoft has <a href="http://www.vnunet.com/news/1156587">begun seriously pushing</a> <a href="http://www.microsoft.com/windows/sfu/">Windows SFU</a> (Windows Services For Unix). This is a set of APIs that mimic the UNIX libc/POSIX standard, and in fact even allow for the execution of Linux binaries on Windows (much like the <a href="http://www.winehq.com">WINE project</a> does in the other direction). SFU is a free download, and will be included by default in Longhorn Server, due some time in 2007.

What does this mean? Is this tacit acknowledgement that Microsoft has lost developers to the UNIX camp? Or are they trying to lure a new batch of developers from UNIX/Linux that might never have considered Windows?

I think it's perhaps even broader than that; an acknowledgement that the UNIX design, by virtue of its simplicity and broad reach, is becoming (again) the defacto portable programming environment, and that Microsoft's proprietary APIs have had their day.

At least on the server.

There is no real cross-platform GUI standard on the client, and Microsoft is using this final opportunity with Longhorn client to get real lock-in. Their attempts to do so on the server have failed, and so they have to play someone else's game and essentially ship their own version of UNIX/Linux.  The API battle on the server is definitively over - and the winner is not a single vendor, but the UNIX API set.

Another nail in the coffin of Microsoft's proprietary system is their acknowledgement that all modern kernels essentially offer the same features and stability. They may differ in some parts of their design - micro-verses-monolithic kernel, kernel pre-emption, NX support - but essentially there are quite a few mature, portable kernels available now and the hard problems have all been solved. Think NT, Solaris, Linux, QNX and Darwin. This means MS can't differentiate on the kernel - and in fact, the effort of maintaining the NT kernel may not be worthwhile before too long. I think we finally <em>are</em> at a point where we can see the day coming that Microsoft switches to an open-source kernel.

Where will it lead? I believe that Microsoft will become just another UNIX player in the Server market, providing NFS and Apache alongside the now rather crusty IIS and SMB. They will focus like a laser on retaining the client market, mimicking (as always) the Apple OS X GUI advancements and bringing them to the masses. It is the only place where they stand a chance, but how well they do depends on how quickly the Linux and UNIX client markets can coalesce their current fragmented client APIs into a broadly accepted standard. If that can happen before Longhorn hits in 2007, Microsoft's efforts will be seriously hampered.
