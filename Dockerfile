FROM ubuntu:18.04
RUN apt update -y
RUN apt install wget -y
RUN wget -O install.sh http://www.aapanel.com/script/install-ubuntu_6.0_en.sh
CMD bash install.sh forum
