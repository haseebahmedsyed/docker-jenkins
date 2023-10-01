FROM tomcat:9
WORKDIR /usr/local/tomcat/webapps/
ADD **/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]