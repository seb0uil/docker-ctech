FROM docker:dind

MAINTAINER seb0uil

WORKDIR /tmp
RUN apk upgrade --update && \
 && apk add openjdk7 \
 && wget "http://wwwftp.ciril.fr/pub/apache/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.tar.gz" \
 && wget "http://apache.crihan.fr/dist//ant/binaries/apache-ant-1.9.6-bin.tar.gz" \
 && mkdir /opt && tar xvzf apache-maven-3.3.3-bin.tar.gz -C /opt && tar xvzf apache-ant-1.9.6-bin.tar.gz -C /opt
