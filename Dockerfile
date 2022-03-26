FROM ubuntu:20.04@sha256:bea6d19168bbfd6af8d77c2cc3c572114eb5d113e6f422573c93cb605a0e2ffb
MAINTAINER Frank Lemanschik @ DirektSPEED Europe <frank@dspeed.eu>
# Adding new ubuntu 14.04 Mirror sources to speed the things up
RUN echo "deb mirror://mirrors.ubuntu.com/mirrors.txt trusty main restricted universe multiverse \n\
deb mirror://mirrors.ubuntu.com/mirrors.txt trusty-updates main restricted universe multiverse \n\
deb mirror://mirrors.ubuntu.com/mirrors.txt trusty-backports main restricted universe multiverse \n\
deb mirror://mirrors.ubuntu.com/mirrors.txt trusty-security main restricted universe multiverse" > /etc/apt/sources.list \
 && apt-get -y update && apt-get install -y --no-install-recommends docker.io git make \
 && git clone git://github.com/docker/docker \
 && ln -s /usr/bin/docker.io /usr/bin/docker \
 && apt-get -y clean \
CMD cd /docker \
 && git fetch origin \
 && git reset --hard origin/master \
 && make cross   

#/build-binary --upload ftp://user:pass@host.tld git://user:pass@github.com/username/repo s3://username:pass
#echo docker run --name=build-docker-nightly -v /var/run/docker.sock:/var/run/docker.sock dspeed/docker-nightly-build /run.1 \n
#ls -ao /docker/bundels/
#echo "The Docker Socket needs to be bound to /var/run/docker.sock else this don't works!"
# Now Uploading the Result to AMAZON S3 Via CURL 
