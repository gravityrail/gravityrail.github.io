---
layout: post
status: publish
published: true
title: Cracks in the Google
author: daniel
author_login: daniel
author_email: goldsounds@gmail.com
author_url: http://
wordpress_id: 280
wordpress_url: http://goldsounds.com/archives/2006/05/04/cracks-in-the-google/
date: 2006-05-04 12:13:15.000000000 -07:00
categories:
- general
tags: []
comments: []
---
<b>Update:</b> Since writing this, my remaining problems have been smoothed out, and the people from Google who have contacted me have been very professional and attentive. The user experience continues to improve, and of course it's worth remembering that both Google Base and Froogle are still Beta products. I'm quite excited about what the future holds for structured data uploads to search engines.

<hr />

Google is releasing a lot of products. After all, when you're a company with that much cash in the bank and hordes of stockholders holding their breath, you have to appear to be doing something with their good faith. Some might say Google's headlong rush to the forefront of everything has been a little too quick.

Just a few days ago, I would have been the first to leap to Google's defense in the fact of criticisms that they're spreading themselves too thin. But after a week of trying to get my store's products online using either Google Base or Froogle, I have to say the experience has completely sucked.

To be fair, Google has actually responded to my emails (and they must get a <em>lot</em> of emails), but the whole thing smacks of being flung at the ceiling to see how long it sticks.

Here's a rough chronology:

- I open a Google Base account, just to see what it's like.
- I select a product feed, using the drop-down box to select "Australian Dollars", since that's my store's native (but not only) currency.
- I create a simple script to upload the products via FTP from my server.
- I get some very non-specific error, like "feed disapproved", with no more information. So I email using the "Contact Us" link.
- 24 hours later, I get a form letter back, saying the feed was rejected because of "- Unsupported currency". Which begs the question:
  (a) Why couldn't they just have displayed that error in the web interface, if they knew what it was?
and (b) <strong>Why offer other currencies in a drop down box on sign-up if nothing but USD is supported?</strong>
- I fix the problem, and re-upload.
- 24 hours later, my products appear! Huzzah! Sans-images, though. I email Google.
- 24 hours later, my images appear! Huzzah!
- 24 hours later, my feed is ripped off the site! Boo! I ask them what the problem is. Uh-oh: "- Unsupported currency". Didn't I already fix that? I email Google.
- 24 hours later, another form letter. A new error! "- Wrong prices". What? This time, they helpfully included a note:

<blockquote>Wrong prices: Please make sure the prices that appear in your bulk upload match the prices that appear on your item pages. For example, for your item named "Lantern Tree T-shirt," you included $42.00 as the price. However, the price is listed as $60.00 on the item page. Recheck your bulk upload and make sure that all prices match the prices that appear on your item pages.</blockquote>

Right. So I'm guessing they didn't see the drop-down box in the corner with "Australian Dollars" selected, and the ability to select USD for comparison. But no matter! I added some extra CGI parameters to my uploaded links so that it would display USD on the site to anyone coming from Google Base, and emailed Google back to let them know about the changes.

- A couple of days later, Google emails me to let me know that "Congratulations! You products are appearing!". I don't want to be congratulated by this stage. I just need a hug. What's more, only 16 of the 120 products are appearing, and many of those don't have their associated images (the feed image URLs are absolutely correct).
- Still waiting on a response from Google as to when the rest of my products will appear...

AND SO. I have been trying to upload using Froogle Merchant in parallel. Again, I was offered Australian Dollars as an option. Again, I foolishly accepted it. Again, rejected.
- When I tried to re-upload with correct prices, they wouldn't let me delete the (erroneously created) original file. Emails back and forth. They recreated the file with the correct settings.
- My file was personally reviewed by John of "The Google Team" after upload - nice!
- Uh-oh, my feed was rejected again - "- Wrong prices - Unsupported Currency". Of course, when we'd changed the feed settings to USD, I'd forgotten to change back the prices. Fixed.
- When I tried to re-upload the data, I got a permissions error. Guess what? John, or someone else from the Google Team, had written my newly-renamed feed as ROOT in their FTP server, and now there was no way I could update the file. Nice one!
<code>
ftp> ls
200 PORT command successful.
150 Opening ASCII mode data connection for directory listing.
total 176
-r--r-----   1 ftp    ? root   ?    83071 May  3 10:10 georgielove_products_us.txt
226 Transfer complete.
ftp>
</code>

The saga continues, but as of right now, more than a week after I began this process, I still don't have any satisfactory products displaying on Google Base or Froogle. I am not an idiot - sure I made a couple of mistakes, but a lot of people will, and unless Google can smooth this process out a lot of people's time is going to be wasted.

I'm still a Google Believer, but I'm no longer wearing rose-tinted glasses.
