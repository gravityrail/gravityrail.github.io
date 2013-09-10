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
    who is interested can download it from\r\n\r\nhttp://winkjava.110mb.com/gaehelloworld/helloworld.zip\r\n\r\nHappy
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
    VERS=1.2.0\r\n\r\ncall mvn install:install-file -Dfile=%LIB%/appengine-tools-api.jar
    -DgroupId=com.google -DartifactId=appengine-tools -Dversion=%VERS% -Dpackaging=jar
    -DgeneratePom=true\r\ncall mvn install:install-file -Dfile=%LIB%/shared/appengine-local-runtime-shared.jar
    -DgroupId=com.google -DartifactId=appengine-tools -Dversion=%VERS% -Dpackaging=jar
    -DgeneratePom=true\r\ncall mvn install:install-file -Dfile=%LIB%/shared/geronimo-el_1.0_spec-1.0.1.jar
    -DgroupId=org.apache.geronimo.specs -DartifactId=geronimo-el_1.0_spec -Dversion=1.0.1
    -Dpackaging=jar -DgeneratePom=true\r\ncall mvn install:install-file -Dfile=%LIB%/shared/geronimo-jsp_2.1_spec-1.0.1.jar
    -DgroupId=org.apache.geronimo.specs -DartifactId=geronimo-jsp_2.1_spec -Dversion=1.0.1
    -Dpackaging=jar -DgeneratePom=true\r\ncall mvn install:install-file -Dfile=%LIB%/shared/geronimo-servlet_2.5_spec-1.2.jar
    -DgroupId=org.apache.geronimo.specs -DartifactId=geronimo-servlet_2.5_spec -Dversion=1.2
    -Dpackaging=jar -DgeneratePom=true\r\ncall mvn install:install-file -Dfile=%LIB%/user/orm/geronimo-jpa_3.0_spec-1.1.1.jar
    -DgroupId=org.apache.geronimo.specs -DartifactId=geronimo-jpa_3.0_spec -Dversion=1.1.1
    -Dpackaging=jar -DgeneratePom=true\r\ncall mvn install:install-file -Dfile=%LIB%/user/orm/geronimo-jta_1.1_spec-1.1.1.jar
    -DgroupId=org.apache.geronimo.specs -DartifactId=geronimo-jta_1.1_spec -Dversion=1.1.1
    -Dpackaging=jar -DgeneratePom=true\r\ncall mvn install:install-file -Dfile=%LIB%/user/orm/datanucleus-appengine-1.0.0.final.jar
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
    VERS=1.2.0\r\n\r\ncall mvn install:install-file -Dfile=%LIB%/appengine-tools-api.jar
    -DgroupId=com.google -DartifactId=appengine-tools -Dversion=%VERS% -Dpackaging=jar
    -DgeneratePom=true\r\ncall mvn install:install-file -Dfile=%LIB%/shared/appengine-local-runtime-shared.jar
    -DgroupId=com.google -DartifactId=appengine-tools -Dversion=%VERS% -Dpackaging=jar
    -DgeneratePom=true\r\ncall mvn install:install-file -Dfile=%LIB%/shared/geronimo-el_1.0_spec-1.0.1.jar
    -DgroupId=org.apache.geronimo.specs -DartifactId=geronimo-el_1.0_spec -Dversion=1.0.1
    -Dpackaging=jar -DgeneratePom=true\r\ncall mvn install:install-file -Dfile=%LIB%/shared/geronimo-jsp_2.1_spec-1.0.1.jar
    -DgroupId=org.apache.geronimo.specs -DartifactId=geronimo-jsp_2.1_spec -Dversion=1.0.1
    -Dpackaging=jar -DgeneratePom=true\r\ncall mvn install:install-file -Dfile=%LIB%/shared/geronimo-servlet_2.5_spec-1.2.jar
    -DgroupId=org.apache.geronimo.specs -DartifactId=geronimo-servlet_2.5_spec -Dversion=1.2
    -Dpackaging=jar -DgeneratePom=true\r\ncall mvn install:install-file -Dfile=%LIB%/user/orm/geronimo-jpa_3.0_spec-1.1.1.jar
    -DgroupId=org.apache.geronimo.specs -DartifactId=geronimo-jpa_3.0_spec -Dversion=1.1.1
    -Dpackaging=jar -DgeneratePom=true\r\ncall mvn install:install-file -Dfile=%LIB%/user/orm/geronimo-jta_1.1_spec-1.1.1.jar
    -DgroupId=org.apache.geronimo.specs -DartifactId=geronimo-jta_1.1_spec -Dversion=1.1.1
    -Dpackaging=jar -DgeneratePom=true\r\ncall mvn install:install-file -Dfile=%LIB%/user/orm/datanucleus-appengine-1.0.0.final.jar
    -DgroupId=org.datanucleus -DartifactId=datanucleus-appengine -Dversion=1.0.0.final
    -Dpackaging=jar -DgeneratePom=true\r\n\r\n\r\n</pre>"
- id: 32683
  author: Sudhir
  author_email: sn@yahoo.com
  author_url: http://www.jsptube.com
  date: !binary |-
    MjAxMC0wMS0wOCAwOTowNzowMiAtMDgwMA==
  date_gmt: !binary |-
    MjAxMC0wMS0wOCAxNjowNzowMiAtMDgwMA==
  content: ! "Vote here if you are looking for maven support in GAE\r\nhttp://code.google.com/p/googleappengine/issues/detail?id=1296"
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
Ok, so I had a whole bunch of work to do today and I've just thrown it out the window: Google has unleashed <a href="http://www.techcrunch.com/2009/04/07/live-from-google-campfire-09/">Java support for Google App Engine</a>.

This is <strong>huge</strong> news. The implementation is solid (it does its best, within the restrictions of Google's architecture, to support standards and avoid architectural lock-in).

Let's cut to the chase: I spent this afternoon working out how to build App Engine Java projects with Maven 2 instead of Ant.

I do this for several reasons, the main one being that the CMS I'm building uses Maven as a build system and I love it. A secondary reason is that Maven easily gives me the power to target OSGI, App Engine, and plain ol' Java Servlets with the one project.

So here we go. First, here's a script to install some of Google's more obscure libraries into your local Maven repository:
<pre lang="bash">#!/bin/sh

#install Google App Engine dependencies into local maven repository

#copyright 2009 Gravity Rail Pty Ltd

export CURR=`pwd`
export SDK=`pwd`
export LIB="${SDK}/lib"
export VERS="1.2.0"

cd $LIB

mvn install:install-file -Dfile=${LIB}/appengine-tools-api.jar \
  -DgroupId=com.google \
  -DartifactId=appengine-tools \
  -Dversion=${VERS} \
  -Dpackaging=jar \
  -DgeneratePom=true

mvn install:install-file -Dfile=${LIB}/shared/appengine-local-runtime-shared.jar \
  -DgroupId=com.google \
  -DartifactId=appengine-tools \
  -Dversion=${VERS} \
  -Dpackaging=jar \
  -DgeneratePom=true

mvn install:install-file -Dfile=${LIB}/shared/geronimo-el_1.0_spec-1.0.1.jar \
  -DgroupId=org.apache.geronimo.specs \
  -DartifactId=geronimo-el_1.0_spec \
  -Dversion=1.0.1 \
  -Dpackaging=jar \
  -DgeneratePom=true

mvn install:install-file -Dfile=${LIB}/shared/geronimo-jsp_2.1_spec-1.0.1.jar \
  -DgroupId=org.apache.geronimo.specs \
  -DartifactId=geronimo-jsp_2.1_spec \
  -Dversion=1.0.1 \
  -Dpackaging=jar \
  -DgeneratePom=true

mvn install:install-file -Dfile=${LIB}/shared/geronimo-servlet_2.5_spec-1.2.jar \
  -DgroupId=org.apache.geronimo.specs \
  -DartifactId=geronimo-servlet_2.5_spec \
  -Dversion=1.2 \
  -Dpackaging=jar \
  -DgeneratePom=true

mvn install:install-file -Dfile=${LIB}/user/orm/geronimo-jpa_3.0_spec-1.1.1.jar \
  -DgroupId=org.apache.geronimo.specs \
  -DartifactId=geronimo-jpa_3.0_spec \
  -Dversion=1.1.1 \
  -Dpackaging=jar \
  -DgeneratePom=true

mvn install:install-file -Dfile=${LIB}/user/orm/geronimo-jta_1.1_spec-1.1.1.jar \
  -DgroupId=org.apache.geronimo.specs \
  -DartifactId=geronimo-jta_1.1_spec \
  -Dversion=1.1.1 \
  -Dpackaging=jar \
  -DgeneratePom=true

mvn install:install-file -Dfile=${LIB}/user/orm/datanucleus-appengine-1.0.0.final.jar \
  -DgroupId=org.datanucleus \
  -DartifactId=datanucleus-appengine \
  -Dversion=1.0.0.final \
  -Dpackaging=jar \
  -DgeneratePom=true

cd $CURR</pre>
Next, let's modify the ant build.xml file in the root of our project slightly to take account of Maven's default project layout:
<pre lang="xml">
<project name="JDO Examples" default="datanucleusenhance">
	<property name="sdk.dir" location="/Users/dan/Documents/Development/appengine/appengine-java-sdk-1.2.0/" />

	<import file="${sdk.dir}/config/user/ant-macros.xml" />

	<path id="project.classpath">
		<pathelement path="war/WEB-INF/classes" />
		<fileset dir="war/WEB-INF/lib">
			<include name="**/*.jar" />
		</fileset>
		<fileset dir="${sdk.dir}/lib">
			<include name="shared/**/*.jar" />
		</fileset>
	</path>

	<target name="copyjars"
      description="Copies the App Engine JARs to the WAR.">
		<mkdir dir="war/WEB-INF/lib" />
		<copy
        todir="war/WEB-INF/lib"
        flatten="true">
			<fileset dir="${sdk.dir}/lib/user">
				<include name="**/*.jar" />
			</fileset>
		</copy>
	</target>

	<target name="compile" depends="copyjars"
      description="Compiles Java source and copies other source files to the WAR.">
		<mkdir dir="war/WEB-INF/classes" />
		<copy todir="war/WEB-INF/classes">
			<fileset dir="src/main/resources">
				<exclude name="**/*.java" />
			</fileset>
		</copy>
		<javac
        srcdir="src/main/java"
        destdir="war/WEB-INF/classes"
        classpathref="project.classpath"
        debug="on" />
		<!-- copy webapp files -->
		<copy todir="war/">
			<fileset dir="src/main/webapp">

			</fileset>
		</copy>
	</target>

	<target name="datanucleusenhance" depends="compile"
      description="Performs JDO enhancement on compiled data classes.">
		<enhance_war war="war" />
	</target>

	<target name="runserver" depends="datanucleusenhance"
      description="Starts the development server.">
		<dev_appserver war="war" />
	</target>

	<target name="update" depends="datanucleusenhance"
      description="Uploads the application to App Engine.">
		<appcfg action="update" war="war" />
	</target>

	<target name="update_indexes" depends="datanucleusenhance"
      description="Uploads just the datastore index configuration to App Engine.">
		<appcfg action="update_indexes" war="war" />
	</target>

	<target name="rollback" depends="datanucleusenhance"
      description="Rolls back an interrupted application update.">
		<appcfg action="rollback" war="war" />
	</target>

	<target name="request_logs"
      description="Downloads log data from App Engine for the application.">
		<appcfg action="request_logs" war="war">
			<options>
				<arg value="--num_days=5"/>
			</options>
			<args>
				<arg value="logs.txt"/>
			</args>
		</appcfg>
	</target>

</project>

</pre>
Finally, we put in our pom.xml file that calls ant for tasks like deployment (doesn't quite work yet):
<pre lang="xml">
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
	<modelVersion>4.0.0</modelVersion>
	<groupId>com.transitplatform</groupId>
	<artifactId>TransitAppEngine</artifactId>
	<packaging>war</packaging>
	<name>Transit App Engine</name>
	<version>1.0-SNAPSHOT</version>
	<build>
		<outputDirectory>war/WEB-INF/classes</outputDirectory>
		<resources>
			<resource>
				<directory>src/main/resources</directory>
			</resource>
			<resource>
				<directory>src/main/java</directory>
				<includes>
					<include>**</include>
				</includes>
				<excludes>
					<exclude>**/*.java</exclude>
				</excludes>
			</resource>
		</resources>
		<plugins>
			<plugin>
				<artifactId>maven-compiler-plugin</artifactId>
				<configuration>
					<source>1.6</source>
					<target>1.6</target>
				</configuration>
			</plugin>
			<plugin>
				<artifactId>maven-antrun-plugin</artifactId>
				<executions>
					<execution>
						<id>1</id>
						<!-- pass maven runtime classpath to ant -->
						<phase>compile</phase>
						<configuration>
							<tasks>
								<!--
									<property name="runtime-classpath"
									refid="maven.runtime.classpath" />
								-->
								<ant target="compile" inheritRefs="true" />
							</tasks>
						</configuration>
						<goals>
							<goal>run</goal>
						</goals>
					</execution>
					<execution>
						<id>2</id>
						<!-- pass maven runtime classpath to ant -->
						<phase>deploy</phase>
						<configuration>
							<tasks>
								<!--
									<property name="runtime-classpath"
									refid="maven.runtime.classpath" />
								-->
								<ant target="update" inheritRefs="true" />
							</tasks>
						</configuration>
						<goals>
							<goal>run</goal>
						</goals>
					</execution>
				</executions>
			</plugin>
		</plugins>

	</build>


	<dependencies>
		<dependency>
			<groupId>org.apache.wicket</groupId>
			<artifactId>wicket</artifactId>
			<version>1.4-rc2</version>
		</dependency>
		<dependency>
			<groupId>org.apache.geronimo.specs</groupId>
			<artifactId>geronimo-jsp_2.1_spec</artifactId>
			<version>1.0.1</version>
		</dependency>
		<dependency>
			<groupId>org.apache.geronimo.specs</groupId>
			<artifactId>geronimo-jpa_3.0_spec</artifactId>
			<version>1.1.1</version>
		</dependency>
		<dependency>
			<groupId>org.apache.geronimo.specs</groupId>
			<artifactId>geronimo-jpa_3.0_spec</artifactId>
			<version>1.1.1</version>
		</dependency>
		<dependency>
			<groupId>ant</groupId>
			<artifactId>ant</artifactId>
			<version>1.6.5</version>
		</dependency>
		<dependency>
			<groupId>ant</groupId>
			<artifactId>ant-launcher</artifactId>
			<version>1.6.5</version>
		</dependency>
		<dependency>
			<groupId>commons-logging</groupId>
			<artifactId>commons-logging</artifactId>
			<version>1.1.1</version>
		</dependency>
		<dependency>
			<groupId>commons-el</groupId>
			<artifactId>commons-el</artifactId>
			<version>1.0</version>
		</dependency>
		<dependency>
			<groupId>org.datanucleus</groupId>
			<artifactId>datanucleus-core</artifactId>
			<version>1.1.0</version>
			<exclusions>
				<exclusion>
					<groupId>javax.transaction</groupId>
					<artifactId>transaction-api</artifactId>
				</exclusion>
			</exclusions>
		</dependency>
		<dependency>
			<groupId>org.datanucleus</groupId>
			<artifactId>datanucleus-jpa</artifactId>
			<version>1.1.0</version>
		</dependency>
		<dependency>
			<groupId>org.datanucleus</groupId>
			<artifactId>datanucleus-appengine</artifactId>
			<version>1.0.0.final</version>
		</dependency>
		<dependency>
			<groupId>tomcat</groupId>
			<artifactId>jasper-compiler</artifactId>
			<version>5.0.28</version>
		</dependency>
		<dependency>
			<groupId>tomcat</groupId>
			<artifactId>jasper-runtime</artifactId>
			<version>5.0.28</version>
		</dependency>
		<dependency>
			<groupId>javax.jdo</groupId>
			<artifactId>jdo2-api</artifactId>
			<version>2.3-SNAPSHOT</version>
			<exclusions>
				<exclusion>
					<groupId>javax.transaction</groupId>
					<artifactId>transaction-api</artifactId>
				</exclusion>
			</exclusions>
		</dependency>
		<dependency>
			<groupId>javax.transaction</groupId>
			<artifactId>jta</artifactId>
			<version>1.1</version>
		</dependency>
		<dependency>
			<groupId>org.slf4j</groupId>
			<artifactId>jcl104-over-slf4j</artifactId>
			<version>1.4.3</version>
		</dependency>
		<dependency>
			<groupId>org.slf4j</groupId>
			<artifactId>slf4j-simple</artifactId>
			<version>1.4.3</version>
		</dependency>
	</dependencies>


	<repositories>
		<repository>
			<id>datanucleus</id>
			<name>Datanucleus Repository</name>
			<url>http://www.datanucleus.org/downloads/maven2/</url>
		</repository>
	</repositories>
</project>
</pre>
Hope you find this useful, and good luck! Also, let me know if you have any corrections, compliments, duffel-bags-full-of-cash, etc.

Download a sample project here:

<a href="/wp-content/uploads/2009/04/mavenappengine.tgz">mavenappengine</a>
