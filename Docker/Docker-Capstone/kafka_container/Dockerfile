FROM ubuntu:latest
RUN apt-get update && apt-get install -y openjdk-8-jdk wget
RUN wget -qO - http://apache.mirror.amaze.com.au/kafka/3.0.0/kafka_2.13-3.0.0.tgz | tar -xvz -C /opt
ENV KAFKA_HOME=/opt/kafka_2.13-3.0.0
ENV PATH=${PATH}:${KAFKA_HOME}/bin
WORKDIR ${KAFKA_HOME}
CMD ["bin/kafka-server-start.sh", "config/server.properties"]
