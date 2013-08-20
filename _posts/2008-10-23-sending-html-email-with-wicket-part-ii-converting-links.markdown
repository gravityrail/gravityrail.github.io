---
layout: post
status: publish
published: true
title: ! 'Sending HTML Email with Wicket part II: Converting links'
author: dan
author_login: admin
author_email: dan@danwalmsley.com
author_url: http://danwalmsley.com
wordpress_id: 173
wordpress_url: http://www.danwalmsley.com/?p=173
date: 2008-10-23 00:41:28.000000000 -07:00
categories:
- Programming
- Articles
tags:
- wicket
- apache
- html
- email
- java
- render
- marketing
comments:
- id: 16268
  author: Brian
  author_email: brian@orb.org
  author_url: ''
  date: !binary |-
    MjAwOC0xMS0yNSAyMTo1MDo0NyAtMDgwMA==
  date_gmt: !binary |-
    MjAwOC0xMS0yNiAwNDo1MDo0NyAtMDgwMA==
  content: Thanks for posting this, Dan.  Haven't tried it with Wicket 1.3 yet, but
    in 1.4, the WebRequest apparently needs to be changed to a ServletWebRequest.  This
    isn't enough though.  For some reason, the BookmarkableRequestTarget doesn't provide
    enough information to resolve the page class, and no output is generated.  Any
    ideas?
- id: 30465
  author: Andrew Williams
  author_email: andy@handyande.co.uk
  author_url: http://handyande.co.uk
  date: !binary |-
    MjAwOS0wOC0zMCAxNDowMzoyMCAtMDcwMA==
  date_gmt: !binary |-
    MjAwOS0wOC0zMCAyMTowMzoyMCAtMDcwMA==
  content: ! "Could I, thinking out of the box here, suggest more simply inserting
    an html \"base\" header assuming you have control over the html email you are
    sending out?\r\n\r\nNot elegant but much slimmer ;)"
- id: 37625
  author: Chris Baranowski
  author_email: pharcosyle+danwalmsley@gmail.com
  author_url: ''
  date: !binary |-
    MjAxMS0wMS0xNyAxMzoyNTo1OSAtMDgwMA==
  date_gmt: !binary |-
    MjAxMS0wMS0xNyAyMDoyNTo1OSAtMDgwMA==
  content: ! "A clever use of visitors, but unnecessary. Just use WicketTester to
    render your page to a string and, in the Application instance you pass to the
    WicketTester constructor, override newWebRequest:\r\n\r\n@Override\r\nprotected
    WebRequest newWebRequest(HttpServletRequest servletRequest)\r\n{\r\n\treturn new
    ServletWebRequest(servletRequest)\r\n\t{\r\n\t\t@Override\r\n\t\tpublic String
    getRelativePathPrefixToContextRoot()\r\n\t\t{\r\n\t\t\treturn \"http://\"
    + getHttpServletRequest().getServerName() + \"/\";\r\n\t\t}\r\n\t\t\r\n\t\t@Override\r\n\t\tpublic
    String getRelativePathPrefixToWicketHandler()\r\n\t\t{\r\n\t\t\treturn \"http://\"
    + getHttpServletRequest().getServerName() + \"/\";\r\n\t\t}\r\n\t};\r\n}\r\n\r\nThis
    will make wicket convert both static  tag src attributes and hrefs of wicket components
    (like Link, BookmarkablePageLink...) to absolute urls."
---
In my previous post, I showed how you can use <a href="http://wicket.apache.org">Wicket</a>'s HTML rendering engine to render HTML emails by faking a request/response cycle.

In this post, I'll show you how to use an IVisitor to change image and anchor URLs to be absolute instead of relative. This is absolutely essential in order to make your HTML email work - otherwise all your images can't be found, and your links point to your own mail server.

The trick is to use Wicket's IVisitor to add a TransformerBehaviour to all the Images and Links that uses a regex to transform the URL after render but before the page is returned.

The code for the IVisitor is below:
<pre>private final class RelativeToAbsoluteUrlVisitor implements IVisitor {
&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; private final String requestPath;
&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; private Pattern urlPattern;
&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; private Class<? extends Component> componentClass;

&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; private RelativeToAbsoluteUrlVisitor(String requestPath, Class<? extends Component> componentClass, String attributeName) {
&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; this.requestPath = requestPath;
&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; this.componentClass = componentClass;
&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; urlPattern = Pattern.compile(attributeName+"=\"(.*?)\"");
&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; }

&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; public Object component(Component component) {
&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; //if this component is of the specified class, update the URL attribute to be absolute instead of relative
&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; if(componentClass.isInstance(component)) {
&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; component.add(new AbstractTransformerBehavior() {

&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; @Override
&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; public CharSequence transform(Component component,
&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; CharSequence output) throws Exception {
&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; log.warn("Transforming component output: "+output);

&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; Matcher m = urlPattern.matcher(output);

&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; if(m.find()){
&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; String attributeValue = m.group(1);
&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; int start = m.start(1);
&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; int end = m.end(1);

&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; //convert relative to absolute URL
&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; String absolutePath = RequestUtils.toAbsolutePath(requestPath, attributeValue);

&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; log.warn("Got absolute path '"+absolutePath+"' from relative path '"+attributeValue+"'");

&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; //construct a new string with the absolute URL
&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; String strOutput = String.valueOf(output);
&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; String finalOutput = strOutput.substring(0, start)+absolutePath+strOutput.substring(end);

&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; log.warn("Returning updated component: '"+finalOutput+"'");

&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; return finalOutput;
&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; }

&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; return output;
&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; }});
&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; }
&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; return IVisitor.CONTINUE_TRAVERSAL;
&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; &Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; }
&Acirc;&nbsp;&Acirc;&nbsp;&Acirc;&nbsp; }</pre>
Then we override the onBeforeRender() routine to traverse the component hierarchy and add this behaviour to the appropriate elements. Note that I haven't shown how you get the current absolute request URL, as in my system this is proprietary. There's plenty of example code floating around on how to do that, anyway.
<pre>
	protected void onBeforeRender() {
		super.onBeforeRender();

		final String requestPath = MyCustomWebRequestCycle.get().getCurrentUrlAsString();

		IVisitor imageVisitor = new RelativeToAbsoluteUrlVisitor(requestPath, Image.class, "src");
		IVisitor anchorVisitor = new RelativeToAbsoluteUrlVisitor(requestPath, Link.class, "href");

		visitChildren(Image.class, imageVisitor);
		visitChildren(Link.class, anchorVisitor);
	}</pre>
So there you have it! All the bits and pieces to create HTML email with Wicket. There's one more catch though: You have to generate these emails in the same process as the Wicket Application. Calling Application.get() outside of the main process results in an error. In my system, I get around this by generating the HTML email source every time the user saves my Newsletter bean, which means that when it's finally sent (in the background), it just sends the pre-generated HTML. Easy!
<pre></pre>
