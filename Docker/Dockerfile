# Build stage
FROM adoptopenjdk/openjdk8:alpine-slim AS build

ENV ACTIVEMQ_VERSION 5.10.0
ENV ACTIVEMQ apache-activemq-$ACTIVEMQ_VERSION
ENV ACTIVEMQ_HOME /opt/activemq

RUN apk add --update curl && \
    curl -O http://archive.apache.org/dist/activemq/$ACTIVEMQ_VERSION/$ACTIVEMQ-bin.tar.gz && \
    mkdir -p /opt && \
    tar xf $ACTIVEMQ-bin.tar.gz -C /opt/ && \
    rm $ACTIVEMQ-bin.tar.gz

# Final stage
FROM adoptopenjdk/openjdk8:alpine-slim

ENV ACTIVEMQ_HOME /opt/activemq

COPY --from=build $ACTIVEMQ_HOME $ACTIVEMQ_HOME

WORKDIR $ACTIVEMQ_HOME

COPY conf/jetty-realm.properties ${ACTIVEMQ_HOME}/conf

EXPOSE 61616 8161

CMD ["/bin/bash", "-c", "bin/activemq console"]
