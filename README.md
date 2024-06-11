docker-nightly-build
====================

<h1>deprecated today docker got nightly builds

Image that does a Nightly Build via Cron Job and does a push to the Docker Registry
standart is: dockerimages/docker-binary-amd64:nightly

you can do: docker run dockerimages/docker-nightly-build > bla.zip


* Futures:
* put cronjob.bash into your existing docker repository or a empty directory and cronjob it to run on Cron gitupdate and then build docker inside docker
* run the image and build docker insider the docker image with socks bound into it directly via volum.
