# Doockerfile to deploy addressbook application using tomcat image
FROM tomcat
MAINTAINER "ramki.veda@gmail.com"
ADD ./target/addressbook.war /usr/local/tomcat/webapps
CMD "catalina.sh" "run"
