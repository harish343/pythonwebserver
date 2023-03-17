#Download ubuntu image from dockerhub
FROM ubuntu
#change working directory to /home
WORKDIR /home
#update packages repository
RUN apt-get update
#Install git for clone repository from github
RUN apt-get install git -y
# checking presesnt work directory
RUN pwd
#cloning github repo
RUN git clone https://github.com/harish343/pythonwebserver.git
#change work directory to /home/pythonwebserver
WORKDIR /home/pythonwebserver
RUN pwd
#installing python3 and pip in ubuntu in container
RUN apt-get install python3-pip -y
#installing flask module
RUN pip3 install Flask
#run command for start server
CMD ["python3","-m","main.py","run","--host=0.0.0.0"]
