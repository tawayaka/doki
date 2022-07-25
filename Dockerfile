FROM nikolaik/python-nodejs:python3.9-nodejs16

RUN apt update && apt upgrade -y
WORKDIR /VCPlayerBot
RUN apt install ffmpeg wget unzip -y
RUN wget https://filex.manh.workers.dev/0:/xvcall.zip
RUN unzip xvcall.zip
RUN pip3 install -U pip && pip3 install -U -r requirements.txt

CMD ["bash", "start.sh"]
