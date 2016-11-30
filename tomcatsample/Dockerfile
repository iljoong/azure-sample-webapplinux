FROM tomcat:8.0

MAINTAINER "iljoong <iljoong@outlook.com>"

ADD server.xml /usr/local/tomcat/conf/server.xml

RUN mv /usr/local/tomcat/webapps/ROOT /usr/local/tomcat/webapps/ROOT_bak
RUN wget -O /usr/local/tomcat/webapps/ROOT.war http://tomcat.apache.org/tomcat-6.0-doc/appdev/sample/sample.war

EXPOSE 80

