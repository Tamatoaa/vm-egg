FROM debian:buster

RUN apt update \
    && apt upgrade -y \
    && useradd -d /home/container -m container \
    && apt-get update \
    && apt-get -y install sudo \
    && apt -y install curl
    
    USER container
    ENV  USER container
    ENV  HOME /home/container
WORKDIR /home/container
COPY ./start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
