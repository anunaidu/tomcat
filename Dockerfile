FROM adoptopenjdk:11-jre-hotspot

MAINTAINER anu@gmail.com

ENV CATALINA_HOME=/opt/app

COPY install/ $CATALINA_HOME/

RUN  chmod +x $CATALINA_HOME/bin/*.sh

EXPOSE 8080

WORKDIR $CATALINA_HOME/bin

CMD ["/bin/sh","catalina.sh","run"]

