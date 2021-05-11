#!/bin/bash

export SPARK_HOME=/spark
export NIFI_HOME=/opt/nifi/nifi-current

. "/spark/sbin/spark-config.sh"
. "/spark/bin/load-spark-env.sh"

# Start nifi
chmod +x $NIFI_HOME/bin/nifi.sh
$NIFI_HOME/bin/nifi.sh start

# Exist forever
tail -f /dev/null 
