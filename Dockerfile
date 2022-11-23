FROM centos
RUN yum install -y \
       java-1.8.0-openjdk \
       java-1.8.0-openjdk-devel
RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.84/src/apache-tomcat-8.5.84-src.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-8.5.84-src/* /opt/tomcat/.
WORKDIR /opt/tomcat/webapps
RUN curl -O -L https://github.com/AKSarav/SampleWebApp/raw/master/dist/SampleWebApp.war

EXPOSE 8082

