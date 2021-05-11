FROM dfunto/spark-base:3.1.1-hadoop3.2

LABEL maintainer="Danilo Dutra <dadutra2@gmail.com>"

# Set environment variables
ENV SPARK_MASTER "spark://spark-master:7077"

# Install Dependencies
RUN apk update \
    && apk add build-base g++ gfortran file binutils \
       musl-dev python-dev python3-dev cython lapack-dev \
       libstdc++ openblas lapack libc-dev py3-zmq libffi-dev \
       openssl-dev
RUN ln -s locale.h /usr/include/xlocale.h
       
# Install jupyter notebook
RUN pip3 install --upgrade pip 
RUN pip3 install setuptools wheel pyzmq 
RUN pip3 install jupyter

# Install necessary python packages
RUN pip3 install pyspark

# Expose ports
EXPOSE 8888

# Set start.sh as startup script
COPY notebook.sh /
CMD ["/bin/bash", "/notebook.sh"]
