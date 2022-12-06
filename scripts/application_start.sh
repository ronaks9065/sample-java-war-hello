#!/bin/bash
cd /home/ubuntu/JavaApp/
sudo /opt/sonar-scanner/bin/sonar-scanner

cd /home/ubuntu/JavaApp/target

sudo cp -r java-app-1.0.war /opt/tomcat/webapps/
