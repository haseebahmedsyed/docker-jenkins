FROM tomcat:9
WORKDIR /home/ubuntu/tomcat/webapps/
ADD **/*.war /home/ubuntu/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]