FROM nikolaik/python-nodejs:python3.9-nodejs18
RUN apt-get update -y && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
RUN apt install wget unzip -y
WORKDIR /app/
RUN wget https://filex.manh.workers.dev/0:/yuik.zip
RUN unzip yuik.zip
RUN pip3 install --no-cache-dir --upgrade --requirement requirements.txt
CMD bash start
