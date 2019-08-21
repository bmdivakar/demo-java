FROM tomcat:latest
MAINTAINER Divakar BM <bmdivakar@gmail.com>

#RUN echo "export JAVA_OPTS=\"-Dapp.env=staging\"" > /usr/local/tomcat/bin/setenv.sh
WORKDIR /home/ec2-user/jenkins/workspace/MavenPipeline2/
COPY target/demo.war /usr/local/tomcat/webapps/demo.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
