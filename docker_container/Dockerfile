FROM openjdk:8u191-jdk-alpine3.9

RUN apk update && \ 
    apk add --no-cache bash && \
    apk add docker

RUN mkdir -p /opt/gp/installer
RUN chmod a+rwx /opt/gp && \
    ln -s /usr/bin/docker /usr/local/bin/docker

# RUN addgroup gpserver && adduser -G gpserver -s /bin/bash -h /home/gpserver -D gpserver
# RUN passwd -u gpserver password

RUN chmod 777 /opt/gp
WORKDIR /opt/gp

#COPY GPserver.bin /opt/gp/installer/gps.bin
COPY install.docker.properties /opt/gp/installer/install.docker.properties


RUN wget -P /opt/gp/installer https://github.com/genepattern/genepattern-server/releases/download/3.9.11-rc.4%2Bb210/GPserver.bin && \
     chmod a+x /opt/gp/installer/GPserver.bin && \ 
     /opt/gp/installer/GPserver.bin  -f /opt/gp/installer/install.docker.properties && \
     cp  /opt/gp/resources/wrapper_scripts/run-with-docker.sh  /opt/gp/resources/wrapper_scripts/run-with-docker.sh.ORIG

# mv /opt/gp/installer/gps.bin /opt/gp/installer/GPserver.bin && \
# COPY install.docker.properties /opt/gp/installer/install.docker.properties
# RUN ln -s /usr/bin/docker /usr/local/bin/docker
#RUN /opt/gp/installer/GPserver.bin  -f /opt/gp/installer/install.docker.properties
#RUN cp  /opt/gp/resources/wrapper_scripts/run-with-docker.sh  /opt/gp/resources/wrapper_scripts/run-with-docker.sh.ORIG

COPY run-with-docker.sh /opt/gp/resources/wrapper_scripts/run-with-docker.sh
RUN chmod 775  /opt/gp/resources/wrapper_scripts/run-with-docker.sh 
COPY database_custom.properties /opt/gp/resources/database_custom.properties
ENV PATH /opt/gp:$PATH
CMD /opt/gp/StartGenePatternServer

