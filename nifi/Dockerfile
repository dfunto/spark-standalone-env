FROM dfunto/spark-base:3.1.1-hadoop3.2

LABEL maintainer="Danilo Dutra<dadutra2@gmail.com>"

ARG NIFI_URL=https://ftp.unicamp.br/pub/apache/nifi/1.13.2/nifi-1.13.2-bin.tar.gz

COPY nifi.sh /

ENV SPARK_MASTER "spark://spark-master:7077"
ENV NIFI_HOME /opt/nifi/nifi-current
ENV SPARK_WORKER_WEBUI_PORT 8081
ENV SPARK_WORKER_LOG /spark/logs

# Create target folders
RUN mkdir /downloads && mkdir -p /opt/nifi/nifi-current && mkdir -p $SPARK_WORKER_LOG

# Download nifi
RUN wget $NIFI_URL -P /downloads

# Install nifi
RUN tar -xf /downloads/nifi-1.13.2-bin.tar.gz -C /downloads && \
    mv /downloads/nifi-1.13.2/* /opt/nifi/nifi-current 

EXPOSE 8080

CMD ["/bin/bash", "/nifi.sh"]
