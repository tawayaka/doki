FROM ubuntu:20.04
RUN apt update
RUN apt upgrade
RUN apt install wget -y
EXPOSE 8888
CMD wget -O install.sh http://www.aapanel.com/script/install-ubuntu_6.0_en.sh && bash install.sh forum
