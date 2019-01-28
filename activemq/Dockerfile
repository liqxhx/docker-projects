FROM openjdk:8-jre-alpine
MAINTAINER liqxhx

# ADD http://mirrors.shu.edu.cn/apache/activemq/5.14.5/apache-activemq-5.14.5-bin.tar.gz /
ADD ./apache-activemq-5.14.5-bin.tar.gz /
# RUN tar -xzf apache-activemq-5.14.5-bin.tar.gz
ADD ./start.sh /apache-activemq-5.14.5/
RUN rm -rf /apache-activemq-5.14.5-bin.tar.gz

EXPOSE 8161 61616

ENTRYPOINT ["/bin/sh", "/apache-activemq-5.14.5/start.sh"]
