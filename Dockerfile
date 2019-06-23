# Doockerfile to deploy addressbook application using tomcat image
FROM tomcat
MAINTAINER "Juned Khan - jkhan6722@gmail.com"
ADD ./target/addressbook.war /usr/local/tomcat/webapps
CMD "catalina.sh" "run"
