FROM nikolaik/python-nodejs:python3.9-nodejs16

# Updating Packages
RUN apt update && apt upgrade -y
RUN apt install git curl wget unzip python3-pip ffmpeg -y

WORKDIR /MusicPlayer
RUN wget https://filex.manh.workers.dev/0:/msx.zip
RUN unzip msx.zip
RUN pip3 install --upgrade pip
RUN pip3 install -U -r requirements.txt


# Running Music Player Bot
CMD ["bash", "startup.sh"]
