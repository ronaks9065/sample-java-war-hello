FROM tomcat:8.0-alpine
WORKDIR .
RUN sudo wget --user=jenkins --password=17stellaF#rps#9
COPY . /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh","run"]
