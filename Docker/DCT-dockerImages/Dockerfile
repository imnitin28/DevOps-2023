# Stage 1: Build ActiveMQ from source
FROM maven:3.6-jdk-8 AS builder
LABEL maintainer="Your Name <your.email@example.com>"
WORKDIR /app
RUN git clone https://github.com/apache/activemq.git && \
    cd activemq && \
    git checkout activemq-5.x && \
    mvn clean install -DskipTests

# Stage 2: Build the final image
FROM openjdk:8-jre-alpine
LABEL maintainer="Your Name <your.email@example.com>"
ENV ACTIVEMQ_HOME=/opt/activemq
ENV PATH=$ACTIVEMQ_HOME/bin:$PATH
WORKDIR $ACTIVEMQ_HOME
RUN apk add --no-cache bash && \
    addgroup -S activemq && \
    adduser -S activemq -G activemq && \
    mkdir -p $ACTIVEMQ_HOME && \
    chown activemq:activemq $ACTIVEMQ_HOME
USER activemq
COPY --from=builder /app/activemq/assembly/target/apache-activemq-5.*-bin.tar.gz /tmp/
RUN tar -xzf /tmp/apache-activemq-5.*-bin.tar.gz --strip-components=1 -C $ACTIVEMQ_HOME && \
    rm /tmp/apache-activemq-5.*-bin.tar.gz && \
    sed -i 's/^#ACTIVEMQ_OPTS_MEMORY/ACTIVEMQ_OPTS_MEMORY/g' $ACTIVEMQ_HOME/bin/env && \
    sed -i 's/^#ACTIVEMQ_HOME=/ACTIVEMQ_HOME=/g' $ACTIVEMQ_HOME/bin/env && \
    sed -i 's/^#JAVA_HOME=/JAVA_HOME=/g' $ACTIVEMQ_HOME/bin/env && \
    chmod +x $ACTIVEMQ_HOME/bin/*

# Expose the ports used by ActiveMQ
EXPOSE 61616 8161

# Start the ActiveMQ server
CMD ["bin/activemq", "console"]
