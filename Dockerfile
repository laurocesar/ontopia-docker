FROM openjdk:8u111
MAINTAINER laurocesar

LABEL "com.laurocesar"="Lauro cesar"
LABEL version="1.0"
LABEL description="Ontopia docker with Omnigator \
www.ontopia.net."

ENV ONTOPIA_HOME /opt/ontopia
ENV CATALINA_HOME ${ONTOPIA_HOME}/apache-tomcat
ENV CATALINA_EXEC ${CATALINA_HOME}/bin/catalina.sh

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
	   wget \
	&& rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/ontopia/ontopia/releases/download/release-5.3.0/ontopia-5.3.0.zip
RUN mkdir -p ${ONTOPIA_HOME}
RUN unzip ontopia-5.3.0.zip -d ${ONTOPIA_HOME}
RUN chmod +x ${CATALINA_HOME}/bin/*.sh
# RUN chmod -R 755 /var/www/ontopia/
RUN rm -rf ontopia-5.3.0.zip

EXPOSE 8080

ENTRYPOINT ["$CATALINA_EXEC", "start"]