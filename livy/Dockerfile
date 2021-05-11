FROM dfunto/spark-base:2.4.7-hadoop2.7

LABEL maintainer="Danilo Dutra <dadutra2@gmail.com>"

# Parameters
ARG LIVY_SERVER_DOWNLOAD_URL="https://downloads.apache.org/incubator/livy/0.7.1-incubating/apache-livy-0.7.1-incubating-bin.zip"

# Set environment variables
ENV SPARK_MASTER "spark://spark-master:7077"
ENV LIVY_HOME "/livy"
ENV SPARK_HOME "/spark"

# Install dependencies
RUN apk add unzip

# Download livy
RUN mkdir /livy && cd /livy && \
    wget $LIVY_SERVER_DOWNLOAD_URL && \
    unzip apache-livy-0.7.1-incubating-bin.zip && rm apache-livy-0.7.1-incubating-bin.zip && \
    mv apache-livy-0.7.1-incubating-bin/* . && rm -rf apache-livy-0.7.1-incubating-bin

# Create log folder
RUN mkdir /livy/logs

# Expose ports
EXPOSE 8998

# Set start.sh as startup script
COPY livy.sh /
CMD ["/bin/bash", "/livy.sh"]
