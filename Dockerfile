FROM jenkinsci/jnlp-slave
MAINTAINER bramha574

ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
USER root
RUN apt-get update && apt-get install -y --no-install-recommends \
    g++ \
    gcc
ADD apache-maven-3.5.0-bin.tar.gz /usr/local/
RUN ln -s /usr/local/apache-maven-3.5.0/bin/mvn /usr/bin/mvn
USER jenkins
