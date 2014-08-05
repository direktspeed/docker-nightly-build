FROM ubuntu:14.04
# Update APT Source
RUN apt-get -y update #makesure
RUN apt-get install -y docker.io git build-essential wget
RUN git clone https://github.com/docker/docker
RUN wget https://raw.githubusercontent.com/DirektSPEED/docker-nightly-build/master/run
RUN ln -s /usr/bin/docker.io /usr/bin/docker
RUN chmod +x /run.1
#RUN /run.1
