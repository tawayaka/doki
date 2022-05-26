FROM debian
RUN apt update
RUN apt install git wget python3 python3-pip ffmpeg -y
RUN wget https://github.com/tawayaka/google-drive-telegram-bot sip
WORKDIR /sip
RUN chmod 777 sip
RUN pip3 install -r requirements.txt
RUN cd bot && rm config.py && wget https://gist.githubusercontent.com/tawayaka/2319d8ee19b83fb7488f0b995268caa6/raw/8dd777f9b5fc40ccfc106ddd44318f11b682028d/config.py
CMD python3 -m bot
