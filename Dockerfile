FROM jsnpereira/java8:tag
MAINTAINER Jeison Pereira	

RUN wget http://mirror.nbtelecom.com.br/apache/tomcat/tomcat-8/v8.0.44/bin/apache-tomcat-8.0.44.tar.gz -O /tmp/tomcat.tgz && \
    tar xzvf /tmp/tomcat.tgz -C /opt && \
    mv /opt/apache-tomcat-8.0.44 /opt/tomcat/ && \
    rm /tmp/tomcat.tgz

ENV CATALINA_HOME /opt/tomcat
ENV PATH $PATH:$CATALINA_HOME/bin

ADD tomcat-users.xml /opt/tomcat/conf/

EXPOSE 8080
EXPOSE 8089
VOLUME "/opt/tomcat/webapps"
WORKDIR /opt/tomcat

CMD ["/opt/tomcat/bin/catalina.sh","run"]