FROM tomcat:8.0-alpine
COPY target/java-app-1.0.war /usr/local/tomcat/webapps/
EXPOSE 3000
CMD ["catalina.sh","run"]
