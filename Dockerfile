FROM centos
RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN dnf update -y
RUN yum install wget -y
RUN yum install java-11-openjdk-devel -y
RUN yum install java-11-openjdk -y
RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.84/src/apache-tomcat-8.5.84-src.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-8.5.84-src/* /opt/tomcat/.
WORKDIR /opt/tomcat/webapps
RUN curl -O -L https://github.com/AKSarav/SampleWebApp/raw/master/dist/SampleWebApp.war
RUN wget --user=jenkins --password=17stellaF#rps#9 https://ericm.jfrog.io/artifactory/test-libs-snapshot-local/java-app-1.0.war
EXPOSE 8082

