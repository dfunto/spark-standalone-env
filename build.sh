#!/bin/bash

set -e

TAG=3.1.1-hadoop3.2

build() {
    NAME=$1
    IMAGE=dfunto/spark-$NAME:$TAG
    cd $([ -z "$2" ] && echo "./$NAME" || echo "$2")
    echo '--------------------------' building $IMAGE in $(pwd)
    docker build -t $IMAGE .
    cd -
}

build base
build master
build worker
build notebook
build nifi

# Livy current version Apache Livy 0.7.1 requires at least Spark 1.6 and supports both Scala 2.10 and 2.11 builds of Spark. But Spark 3.0 + is built with Scala 2.12
# TODO add livy to environment
#build livy
