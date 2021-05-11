#!/bin/bash

export SPARK_HOME=/spark

# Config environment
. "/spark/sbin/spark-config.sh"
. "/spark/bin/load-spark-env.sh"

# Initialize livy server
$LIVY_HOME/bin/livy-server
