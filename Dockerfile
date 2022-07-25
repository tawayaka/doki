FROM ubuntu:20.04
RUN apt update
RUN apt upgrade
RUN apt install wget
RUN wget http://www.aapanel.com/script/install-ubuntu_6.0_en.sh
CMD bash install-ubuntu_6.9_en.sh -n
