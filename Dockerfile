#build from base which comes with java8, vim, docker.io, wget, sshd, passwordless user and other useful utilities
FROM ubuntu:trusty
# ADD instruction will take care of extraction
ADD kafka_2.10-0.8.3-SNAPSHOT.tgz /opt

ENV KAFKA_HOME /opt/kafka_2.10-0.8.3-SNAPSHOT
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

VOLUME ["/kafka"]
#Copy all config files from kafka-config dir
COPY kafka-config/ /opt/kafka_2.10-0.8.3-SNAPSHOT/config/

ADD start-kafka.sh /usr/bin/start-kafka.sh
ADD broker-list.sh /usr/bin/broker-list.sh
CMD start-kafka.sh 
