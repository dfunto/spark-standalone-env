# How to build image
sudo docker build -t "spark-notebook" ./

# Run container
sudo docker run -td -h spark-notebook -p 8888:8888 spark-notebook
