FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade && apt-get install -y wget
RUN apt-get -y install openjdk-8-jdk wget
RUN mkdir /usr/local/tomcat
RUN wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.84/bin/apache-tomcat-8.5.84-fulldocs.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz fulldocs.tar.gz
RUN cp -Rv /tmp/apache-tomcat-8.5.84-fulldocs.tar.gz/* /usr/local/tomcat/
RUN wget --user jenkins --password 17stellaF#rps#9 https://ericm.jfrog.io/artifactory/test-libs-snapshot-local/java-app-1.0.war
COPY . /usr/local/tomcat/webapps/
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
