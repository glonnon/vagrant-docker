FROM ubuntu:14.04

MAINTAINER greg.lonnon@gmail.com
RUN apt-get update && apt-get upgrade && apt-get install -y curl
ADD docker-wait /
ADD http-wait /
ADD deploy.sh /
ADD run.sh /
CMD /run.sh
