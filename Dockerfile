FROM tomcat:8.0-alpine
WORKDIR .
RUN wget --user=jenkins --password=17stellaF#rps#9 https://ericm.jfrog.io/artifactory/test-libs-snapshot-local/java-app-1.0.war
COPY . /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh","run"]
