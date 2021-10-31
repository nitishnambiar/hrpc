FROM tomcat:jre11-temurin-focal 
ADD sample.war /usr/local/tomcat/webapps/
ADD server.xml /usr/local/tomcat/conf/
ADD mycertificate.cert /usr/local/tomcat/conf/
EXPOSE 8080
EXPOSE 9999
CMD chmod +x /usr/local/tomcat/bin/catalina.sh
CMD ["catalina.sh", "run"]
