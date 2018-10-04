FROM ubuntu:devel

RUN apt update
RUN apt upgrade -y
RUN apt install -y wget build-essential

ADD ./get_aquarium /
RUN /get_aquarium

ENTRYPOINT ["asciiquarium", "", "FOREGROUND"]
