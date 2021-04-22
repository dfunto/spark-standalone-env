#!/bin/bash

export SPARK_HOME=/spark

# Config environment
. "/spark/sbin/spark-config.sh"
. "/spark/bin/load-spark-env.sh"

# Create notebook config
jupyter notebook --generate-config

# Set configs
printf "c.NotebookApp.ip = '*'\n" >> /root/.jupyter/jupyter_notebook_config.py
printf "c.NotebookApp.open_browser = False\n" >> /root/.jupyter/jupyter_notebook_config.py
printf "c.NotebookApp.allow_remote_access = True\n" >> /root/.jupyter/jupyter_notebook_config.py
printf "c.NotebookApp.allow_root = True\n" >> /root/.jupyter/jupyter_notebook_config.py

# Initialize notebook
jupyter notebook
