---
layout: post
status: publish
published: true
title: Building Google App Engine Java projects with Maven2
author: dan
author_login: admin
author_email: dan@danwalmsley.com
author_url: http://danwalmsley.com
wordpress_id: 209
wordpress_url: http://www.danwalmsley.com/?p=209
date: 2009-04-07 23:55:07.000000000 -07:00
categories:
- General
tags: []
comments:
- id: 24469
  author: Dave
  author_email: david.syer@googlemail.com
  author_url: ''
  date: !binary |-
    MjAwOS0wNC0wOCAwMDo0NjoxNiAtMDcwMA==
  date_gmt: !binary |-
    MjAwOS0wNC0wOCAwNzo0NjoxNiAtMDcwMA==
  content: ! "Your POM formatting is bust, can you put in a pre tag or something?\r\n\r\nI'm
    a bit confused about what the output is.  You aim is to use Maven layout for Java
    and resource sources, and Google layout for the war content?  FWFIW I tried that
    and it works with the Eclipse tooling as well."
- id: 24470
  author: James Lawson
  author_email: james.lawson@escape-committee.com
  author_url: ''
  date: !binary |-
    MjAwOS0wNC0wOCAwMDo1NTo1OSAtMDcwMA==
  date_gmt: !binary |-
    MjAwOS0wNC0wOCAwNzo1NTo1OSAtMDcwMA==
  content: ! "Dan,\r\nQuick stuff on getting the maven structure set up, but your
    page doesn't seem to be rendering right to follow the example.  I've tried Firefox,
    IE, and Opera with no success!\r\nJames"
- id: 24483
  author: What is Google App Engine? | Gadgets &amp; Tech
  author_email: ''
  author_url: http://www.gizmobite.com/?p=108
  date: !binary |-
    MjAwOS0wNC0wOCAwNzoxNzo0MSAtMDcwMA==
  date_gmt: !binary |-
    MjAwOS0wNC0wOCAxNDoxNzo0MSAtMDcwMA==
  content: ! '[...] Dan Walmsley &Acirc;&raquo; Blog Archive &Acirc;&raquo; Building
    Google App Engine Java &#8230; [...]'
- id: 24484
  author: What is Google App Engine? | Gadgets &amp; Tech
  author_email: ''
  author_url: http://www.gizmobite.com/what-is-google-app-engine/
  date: !binary |-
    MjAwOS0wNC0wOCAwNzoxNzo0NSAtMDcwMA==
  date_gmt: !binary |-
    MjAwOS0wNC0wOCAxNDoxNzo0NSAtMDcwMA==
  content: ! '[...] Dan Walmsley &Acirc;&raquo; Blog Archive &Acirc;&raquo; Building
    Google App Engine Java &#8230; [...]'
- id: 24637
  author: Detective Conan Anime | detectiveconananime.com
  author_email: ''
  author_url: http://detectiveconananime.com/?p=730
  date: !binary |-
    MjAwOS0wNC0xMCAxNjowODowOSAtMDcwMA==
  date_gmt: !binary |-
    MjAwOS0wNC0xMCAyMzowODowOSAtMDcwMA==
  content: ! '[...] Dan Walmsley &Atilde;&sbquo;&Acirc;&raquo; Blog Archive &Atilde;&sbquo;&Acirc;&raquo;
    Building Google App Engine Java &#8230; [...]'
- id: 24689
  author: Thai Ha
  author_email: hathanhthai@gmail.com
  author_url: http://winkjava.110mb.com/
  date: !binary |-
    MjAwOS0wNC0xMSAxNTo0NzoxNiAtMDcwMA==
  date_gmt: !binary |-
    MjAwOS0wNC0xMSAyMjo0NzoxNiAtMDcwMA==
  content: ! "I have just created a simple HelloWorld application using maven 2 which
    can be deployed to Google App Engine with simple command \"mvn install\"\r\nAnyone
    who is interested can download it from\r\n\r\nhttp:&#47;&#47;winkjava.110mb.com&#47;gaehelloworld&#47;helloworld.zip\r\n\r\nHappy
    hacking!"
- id: 30608
  author: Sam Brodkin
  author_email: s@b.com
  author_url: ''
  date: !binary |-
    MjAwOS0wOS0wOCAwODoyNDowOCAtMDcwMA==
  date_gmt: !binary |-
    MjAwOS0wOS0wOCAxNToyNDowOCAtMDcwMA==
  content: ! "Here is a batch file for windows to do the gae artifact local maven
    repo installing:\r\n\r\nset LIB=d:\\downloads\\appengine-java-sdk-1.2.0\\lib\r\nset
    VERS=1.2.0\r\n\r\ncall mvn install:install-file -Dfile=%LIB%&#47;appengine-tools-api.jar
    -DgroupId=com.google -DartifactId=appengine-tools -Dversion=%VERS% -Dpackaging=jar
    -DgeneratePom=true\r\ncall mvn install:install-file -Dfile=%LIB%&#47;shared&#47;appengine-local-runtime-shared.jar
    -DgroupId=com.google -DartifactId=appengine-tools -Dversion=%VERS% -Dpackaging=jar
    -DgeneratePom=true\r\ncall mvn install:install-file -Dfile=%LIB%&#47;shared&#47;geronimo-el_1.0_spec-1.0.1.jar
    -DgroupId=org.apache.geronimo.specs -DartifactId=geronimo-el_1.0_spec -Dversion=1.0.1
    -Dpackaging=jar -DgeneratePom=true\r\ncall mvn install:install-file -Dfile=%LIB%&#47;shared&#47;geronimo-jsp_2.1_spec-1.0.1.jar
    -DgroupId=org.apache.geronimo.specs -DartifactId=geronimo-jsp_2.1_spec -Dversion=1.0.1
    -Dpackaging=jar -DgeneratePom=true\r\ncall mvn install:install-file -Dfile=%LIB%&#47;shared&#47;geronimo-servlet_2.5_spec-1.2.jar
    -DgroupId=org.apache.geronimo.specs -DartifactId=geronimo-servlet_2.5_spec -Dversion=1.2
    -Dpackaging=jar -DgeneratePom=true\r\ncall mvn install:install-file -Dfile=%LIB%&#47;user&#47;orm&#47;geronimo-jpa_3.0_spec-1.1.1.jar
    -DgroupId=org.apache.geronimo.specs -DartifactId=geronimo-jpa_3.0_spec -Dversion=1.1.1
    -Dpackaging=jar -DgeneratePom=true\r\ncall mvn install:install-file -Dfile=%LIB%&#47;user&#47;orm&#47;geronimo-jta_1.1_spec-1.1.1.jar
    -DgroupId=org.apache.geronimo.specs -DartifactId=geronimo-jta_1.1_spec -Dversion=1.1.1
    -Dpackaging=jar -DgeneratePom=true\r\ncall mvn install:install-file -Dfile=%LIB%&#47;user&#47;orm&#47;datanucleus-appengine-1.0.0.final.jar
    -DgroupId=org.datanucleus -DartifactId=datanucleus-appengine -Dversion=1.0.0.final
    -Dpackaging=jar -DgeneratePom=true"
- id: 30609
  author: Sam Brodkin
  author_email: s@b.com
  author_url: ''
  date: !binary |-
    MjAwOS0wOS0wOCAwODoyNTozNiAtMDcwMA==
  date_gmt: !binary |-
    MjAwOS0wOS0wOCAxNToyNTozNiAtMDcwMA==
  content: ! "Here is a batch file for windows to do the gae artifact local maven
    repo installing:\r\n<pre>\r\nset LIB=d:\\downloads\\appengine-java-sdk-1.2.0\\lib\r\nset
    VERS=1.2.0\r\n\r\ncall mvn install:install-file -Dfile=%LIB%&#47;appengine-tools-api.jar
    -DgroupId=com.google -DartifactId=appengine-tools -Dversion=%VERS% -Dpackaging=jar
    -DgeneratePom=true\r\ncall mvn install:install-file -Dfile=%LIB%&#47;shared&#47;appengine-local-runtime-shared.jar
    -DgroupId=com.google -DartifactId=appengine-tools -Dversion=%VERS% -Dpackaging=jar
    -DgeneratePom=true\r\ncall mvn install:install-file -Dfile=%LIB%&#47;shared&#47;geronimo-el_1.0_spec-1.0.1.jar
    -DgroupId=org.apache.geronimo.specs -DartifactId=geronimo-el_1.0_spec -Dversion=1.0.1
    -Dpackaging=jar -DgeneratePom=true\r\ncall mvn install:install-file -Dfile=%LIB%&#47;shared&#47;geronimo-jsp_2.1_spec-1.0.1.jar
    -DgroupId=org.apache.geronimo.specs -DartifactId=geronimo-jsp_2.1_spec -Dversion=1.0.1
    -Dpackaging=jar -DgeneratePom=true\r\ncall mvn install:install-file -Dfile=%LIB%&#47;shared&#47;geronimo-servlet_2.5_spec-1.2.jar
    -DgroupId=org.apache.geronimo.specs -DartifactId=geronimo-servlet_2.5_spec -Dversion=1.2
    -Dpackaging=jar -DgeneratePom=true\r\ncall mvn install:install-file -Dfile=%LIB%&#47;user&#47;orm&#47;geronimo-jpa_3.0_spec-1.1.1.jar
    -DgroupId=org.apache.geronimo.specs -DartifactId=geronimo-jpa_3.0_spec -Dversion=1.1.1
    -Dpackaging=jar -DgeneratePom=true\r\ncall mvn install:install-file -Dfile=%LIB%&#47;user&#47;orm&#47;geronimo-jta_1.1_spec-1.1.1.jar
    -DgroupId=org.apache.geronimo.specs -DartifactId=geronimo-jta_1.1_spec -Dversion=1.1.1
    -Dpackaging=jar -DgeneratePom=true\r\ncall mvn install:install-file -Dfile=%LIB%&#47;user&#47;orm&#47;datanucleus-appengine-1.0.0.final.jar
    -DgroupId=org.datanucleus -DartifactId=datanucleus-appengine -Dversion=1.0.0.final
    -Dpackaging=jar -DgeneratePom=true\r\n\r\n\r\n<&#47;pre>"
- id: 32683
  author: Sudhir
  author_email: sn@yahoo.com
  author_url: http://www.jsptube.com
  date: !binary |-
    MjAxMC0wMS0wOCAwOTowNzowMiAtMDgwMA==
  date_gmt: !binary |-
    MjAxMC0wMS0wOCAxNjowNzowMiAtMDgwMA==
  content: ! "Vote here if you are looking for maven support in GAE\r\nhttp:&#47;&#47;code.google.com&#47;p&#47;googleappengine&#47;issues&#47;detail?id=1296"
- id: 54885
  author: Google App Engine &#8211; Building a Microsite - The Net Whisperer
  author_email: ''
  author_url: http://www.netwhisperer.com/2012/03/15/google-app-engine-building-a-microsite/
  date: !binary |-
    MjAxMi0wMy0xNSAxNDo0Nzo0OCAtMDcwMA==
  date_gmt: !binary |-
    MjAxMi0wMy0xNSAyMTo0Nzo0OCAtMDcwMA==
  content: ! '[...] Building GAE Java Projects with Maven [...]'
---
Ok, so I had a whole bunch of work to do today and I've just thrown it out the window: Google has unleashed <a href="http:&#47;&#47;www.techcrunch.com&#47;2009&#47;04&#47;07&#47;live-from-google-campfire-09&#47;">Java support for Google App Engine<&#47;a>.

This is <strong>huge<&#47;strong> news. The implementation is solid (it does its best, within the restrictions of Google's architecture, to support standards and avoid architectural lock-in).

Let's cut to the chase: I spent this afternoon working out how to build App Engine Java projects with Maven 2 instead of Ant.

I do this for several reasons, the main one being that the CMS I'm building uses Maven as a build system and I love it. A secondary reason is that Maven easily gives me the power to target OSGI, App Engine, and plain ol' Java Servlets with the one project.

So here we go. First, here's a script to install some of Google's more obscure libraries into your local Maven repository:
<pre lang="bash">#!&#47;bin&#47;sh

#install Google App Engine dependencies into local maven repository

#copyright 2009 Gravity Rail Pty Ltd

export CURR=`pwd`
export SDK=`pwd`
export LIB="${SDK}&#47;lib"
export VERS="1.2.0"

cd $LIB

mvn install:install-file -Dfile=${LIB}&#47;appengine-tools-api.jar \
  -DgroupId=com.google \
  -DartifactId=appengine-tools \
  -Dversion=${VERS} \
  -Dpackaging=jar \
  -DgeneratePom=true

mvn install:install-file -Dfile=${LIB}&#47;shared&#47;appengine-local-runtime-shared.jar \
  -DgroupId=com.google \
  -DartifactId=appengine-tools \
  -Dversion=${VERS} \
  -Dpackaging=jar \
  -DgeneratePom=true

mvn install:install-file -Dfile=${LIB}&#47;shared&#47;geronimo-el_1.0_spec-1.0.1.jar \
  -DgroupId=org.apache.geronimo.specs \
  -DartifactId=geronimo-el_1.0_spec \
  -Dversion=1.0.1 \
  -Dpackaging=jar \
  -DgeneratePom=true

mvn install:install-file -Dfile=${LIB}&#47;shared&#47;geronimo-jsp_2.1_spec-1.0.1.jar \
  -DgroupId=org.apache.geronimo.specs \
  -DartifactId=geronimo-jsp_2.1_spec \
  -Dversion=1.0.1 \
  -Dpackaging=jar \
  -DgeneratePom=true

mvn install:install-file -Dfile=${LIB}&#47;shared&#47;geronimo-servlet_2.5_spec-1.2.jar \
  -DgroupId=org.apache.geronimo.specs \
  -DartifactId=geronimo-servlet_2.5_spec \
  -Dversion=1.2 \
  -Dpackaging=jar \
  -DgeneratePom=true

mvn install:install-file -Dfile=${LIB}&#47;user&#47;orm&#47;geronimo-jpa_3.0_spec-1.1.1.jar \
  -DgroupId=org.apache.geronimo.specs \
  -DartifactId=geronimo-jpa_3.0_spec \
  -Dversion=1.1.1 \
  -Dpackaging=jar \
  -DgeneratePom=true

mvn install:install-file -Dfile=${LIB}&#47;user&#47;orm&#47;geronimo-jta_1.1_spec-1.1.1.jar \
  -DgroupId=org.apache.geronimo.specs \
  -DartifactId=geronimo-jta_1.1_spec \
  -Dversion=1.1.1 \
  -Dpackaging=jar \
  -DgeneratePom=true

mvn install:install-file -Dfile=${LIB}&#47;user&#47;orm&#47;datanucleus-appengine-1.0.0.final.jar \
  -DgroupId=org.datanucleus \
  -DartifactId=datanucleus-appengine \
  -Dversion=1.0.0.final \
  -Dpackaging=jar \
  -DgeneratePom=true

cd $CURR<&#47;pre>
Next, let's modify the ant build.xml file in the root of our project slightly to take account of Maven's default project layout:
<pre lang="xml">
<project name="JDO Examples" default="datanucleusenhance">
	<property name="sdk.dir" location="&#47;Users&#47;dan&#47;Documents&#47;Development&#47;appengine&#47;appengine-java-sdk-1.2.0&#47;" &#47;>

	<import file="${sdk.dir}&#47;config&#47;user&#47;ant-macros.xml" &#47;>

	<path id="project.classpath">
		<pathelement path="war&#47;WEB-INF&#47;classes" &#47;>
		<fileset dir="war&#47;WEB-INF&#47;lib">
			<include name="**&#47;*.jar" &#47;>
		<&#47;fileset>
		<fileset dir="${sdk.dir}&#47;lib">
			<include name="shared&#47;**&#47;*.jar" &#47;>
		<&#47;fileset>
	<&#47;path>

	<target name="copyjars"
      description="Copies the App Engine JARs to the WAR.">
		<mkdir dir="war&#47;WEB-INF&#47;lib" &#47;>
		<copy
        todir="war&#47;WEB-INF&#47;lib"
        flatten="true">
			<fileset dir="${sdk.dir}&#47;lib&#47;user">
				<include name="**&#47;*.jar" &#47;>
			<&#47;fileset>
		<&#47;copy>
	<&#47;target>

	<target name="compile" depends="copyjars"
      description="Compiles Java source and copies other source files to the WAR.">
		<mkdir dir="war&#47;WEB-INF&#47;classes" &#47;>
		<copy todir="war&#47;WEB-INF&#47;classes">
			<fileset dir="src&#47;main&#47;resources">
				<exclude name="**&#47;*.java" &#47;>
			<&#47;fileset>
		<&#47;copy>
		<javac
        srcdir="src&#47;main&#47;java"
        destdir="war&#47;WEB-INF&#47;classes"
        classpathref="project.classpath"
        debug="on" &#47;>
		<!-- copy webapp files -->
		<copy todir="war&#47;">
			<fileset dir="src&#47;main&#47;webapp">

			<&#47;fileset>
		<&#47;copy>
	<&#47;target>

	<target name="datanucleusenhance" depends="compile"
      description="Performs JDO enhancement on compiled data classes.">
		<enhance_war war="war" &#47;>
	<&#47;target>

	<target name="runserver" depends="datanucleusenhance"
      description="Starts the development server.">
		<dev_appserver war="war" &#47;>
	<&#47;target>

	<target name="update" depends="datanucleusenhance"
      description="Uploads the application to App Engine.">
		<appcfg action="update" war="war" &#47;>
	<&#47;target>

	<target name="update_indexes" depends="datanucleusenhance"
      description="Uploads just the datastore index configuration to App Engine.">
		<appcfg action="update_indexes" war="war" &#47;>
	<&#47;target>

	<target name="rollback" depends="datanucleusenhance"
      description="Rolls back an interrupted application update.">
		<appcfg action="rollback" war="war" &#47;>
	<&#47;target>

	<target name="request_logs"
      description="Downloads log data from App Engine for the application.">
		<appcfg action="request_logs" war="war">
			<options>
				<arg value="--num_days=5"&#47;>
			<&#47;options>
			<args>
				<arg value="logs.txt"&#47;>
			<&#47;args>
		<&#47;appcfg>
	<&#47;target>

<&#47;project>

<&#47;pre>
Finally, we put in our pom.xml file that calls ant for tasks like deployment (doesn't quite work yet):
<pre lang="xml">
<project xmlns="http:&#47;&#47;maven.apache.org&#47;POM&#47;4.0.0" xmlns:xsi="http:&#47;&#47;www.w3.org&#47;2001&#47;XMLSchema-instance"
	xsi:schemaLocation="http:&#47;&#47;maven.apache.org&#47;POM&#47;4.0.0 http:&#47;&#47;maven.apache.org&#47;maven-v4_0_0.xsd">
	<modelVersion>4.0.0<&#47;modelVersion>
	<groupId>com.transitplatform<&#47;groupId>
	<artifactId>TransitAppEngine<&#47;artifactId>
	<packaging>war<&#47;packaging>
	<name>Transit App Engine<&#47;name>
	<version>1.0-SNAPSHOT<&#47;version>
	<build>
		<outputDirectory>war&#47;WEB-INF&#47;classes<&#47;outputDirectory>
		<resources>
			<resource>
				<directory>src&#47;main&#47;resources<&#47;directory>
			<&#47;resource>
			<resource>
				<directory>src&#47;main&#47;java<&#47;directory>
				<includes>
					<include>**<&#47;include>
				<&#47;includes>
				<excludes>
					<exclude>**&#47;*.java<&#47;exclude>
				<&#47;excludes>
			<&#47;resource>
		<&#47;resources>
		<plugins>
			<plugin>
				<artifactId>maven-compiler-plugin<&#47;artifactId>
				<configuration>
					<source>1.6<&#47;source>
					<target>1.6<&#47;target>
				<&#47;configuration>
			<&#47;plugin>
			<plugin>
				<artifactId>maven-antrun-plugin<&#47;artifactId>
				<executions>
					<execution>
						<id>1<&#47;id>
						<!-- pass maven runtime classpath to ant -->
						<phase>compile<&#47;phase>
						<configuration>
							<tasks>
								<!--
									<property name="runtime-classpath"
									refid="maven.runtime.classpath" &#47;>
								-->
								<ant target="compile" inheritRefs="true" &#47;>
							<&#47;tasks>
						<&#47;configuration>
						<goals>
							<goal>run<&#47;goal>
						<&#47;goals>
					<&#47;execution>
					<execution>
						<id>2<&#47;id>
						<!-- pass maven runtime classpath to ant -->
						<phase>deploy<&#47;phase>
						<configuration>
							<tasks>
								<!--
									<property name="runtime-classpath"
									refid="maven.runtime.classpath" &#47;>
								-->
								<ant target="update" inheritRefs="true" &#47;>
							<&#47;tasks>
						<&#47;configuration>
						<goals>
							<goal>run<&#47;goal>
						<&#47;goals>
					<&#47;execution>
				<&#47;executions>
			<&#47;plugin>
		<&#47;plugins>

	<&#47;build>


	<dependencies>
		<dependency>
			<groupId>org.apache.wicket<&#47;groupId>
			<artifactId>wicket<&#47;artifactId>
			<version>1.4-rc2<&#47;version>
		<&#47;dependency>
		<dependency>
			<groupId>org.apache.geronimo.specs<&#47;groupId>
			<artifactId>geronimo-jsp_2.1_spec<&#47;artifactId>
			<version>1.0.1<&#47;version>
		<&#47;dependency>
		<dependency>
			<groupId>org.apache.geronimo.specs<&#47;groupId>
			<artifactId>geronimo-jpa_3.0_spec<&#47;artifactId>
			<version>1.1.1<&#47;version>
		<&#47;dependency>
		<dependency>
			<groupId>org.apache.geronimo.specs<&#47;groupId>
			<artifactId>geronimo-jpa_3.0_spec<&#47;artifactId>
			<version>1.1.1<&#47;version>
		<&#47;dependency>
		<dependency>
			<groupId>ant<&#47;groupId>
			<artifactId>ant<&#47;artifactId>
			<version>1.6.5<&#47;version>
		<&#47;dependency>
		<dependency>
			<groupId>ant<&#47;groupId>
			<artifactId>ant-launcher<&#47;artifactId>
			<version>1.6.5<&#47;version>
		<&#47;dependency>
		<dependency>
			<groupId>commons-logging<&#47;groupId>
			<artifactId>commons-logging<&#47;artifactId>
			<version>1.1.1<&#47;version>
		<&#47;dependency>
		<dependency>
			<groupId>commons-el<&#47;groupId>
			<artifactId>commons-el<&#47;artifactId>
			<version>1.0<&#47;version>
		<&#47;dependency>
		<dependency>
			<groupId>org.datanucleus<&#47;groupId>
			<artifactId>datanucleus-core<&#47;artifactId>
			<version>1.1.0<&#47;version>
			<exclusions>
				<exclusion>
					<groupId>javax.transaction<&#47;groupId>
					<artifactId>transaction-api<&#47;artifactId>
				<&#47;exclusion>
			<&#47;exclusions>
		<&#47;dependency>
		<dependency>
			<groupId>org.datanucleus<&#47;groupId>
			<artifactId>datanucleus-jpa<&#47;artifactId>
			<version>1.1.0<&#47;version>
		<&#47;dependency>
		<dependency>
			<groupId>org.datanucleus<&#47;groupId>
			<artifactId>datanucleus-appengine<&#47;artifactId>
			<version>1.0.0.final<&#47;version>
		<&#47;dependency>
		<dependency>
			<groupId>tomcat<&#47;groupId>
			<artifactId>jasper-compiler<&#47;artifactId>
			<version>5.0.28<&#47;version>
		<&#47;dependency>
		<dependency>
			<groupId>tomcat<&#47;groupId>
			<artifactId>jasper-runtime<&#47;artifactId>
			<version>5.0.28<&#47;version>
		<&#47;dependency>
		<dependency>
			<groupId>javax.jdo<&#47;groupId>
			<artifactId>jdo2-api<&#47;artifactId>
			<version>2.3-SNAPSHOT<&#47;version>
			<exclusions>
				<exclusion>
					<groupId>javax.transaction<&#47;groupId>
					<artifactId>transaction-api<&#47;artifactId>
				<&#47;exclusion>
			<&#47;exclusions>
		<&#47;dependency>
		<dependency>
			<groupId>javax.transaction<&#47;groupId>
			<artifactId>jta<&#47;artifactId>
			<version>1.1<&#47;version>
		<&#47;dependency>
		<dependency>
			<groupId>org.slf4j<&#47;groupId>
			<artifactId>jcl104-over-slf4j<&#47;artifactId>
			<version>1.4.3<&#47;version>
		<&#47;dependency>
		<dependency>
			<groupId>org.slf4j<&#47;groupId>
			<artifactId>slf4j-simple<&#47;artifactId>
			<version>1.4.3<&#47;version>
		<&#47;dependency>
	<&#47;dependencies>


	<repositories>
		<repository>
			<id>datanucleus<&#47;id>
			<name>Datanucleus Repository<&#47;name>
			<url>http:&#47;&#47;www.datanucleus.org&#47;downloads&#47;maven2&#47;<&#47;url>
		<&#47;repository>
	<&#47;repositories>
<&#47;project>
<&#47;pre>
Hope you find this useful, and good luck! Also, let me know if you have any corrections, compliments, duffel-bags-full-of-cash, etc.

Download a sample project here:

<a href="http:&#47;&#47;www.danwalmsley.com&#47;wp-content&#47;uploads&#47;2009&#47;04&#47;mavenappengine.tgz">mavenappengine<&#47;a>
