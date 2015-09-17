FROM ubuntu:14.04

MAINTAINER sphere "https://github.com/sphereio"

RUN sudo apt-get install -y --force-yes graphviz
RUN sudo apt-get install -y --force-yes software-properties-common
RUN sudo bash -c 'echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections'
RUN sudo add-apt-repository -y ppa:webupd8team/java
RUN sudo apt-get update
RUN sudo apt-get install -y --force-yes oracle-java8-installer oracle-java8-set-default

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
