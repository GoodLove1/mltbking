#FROM anasty17/mltb:latest

#WORKDIR /usr/src/app
#RUN chmod 777 /usr/src/app

#COPY requirements.txt .
#RUN pip3 install --no-cache-dir -r requirements.txt
#RUN playwright install chromium
#RUN playwright install-deps
#RUN apt-get update && apt-get upgrade -y
#RUN apt -qq update --fix-missing && \
#    apt -qq install -y mediainfo

#COPY . .

#CMD ["bash", "start.sh"]

FROM codewithweeb/weebzone:stable

WORKDIR /usr/src/app

RUN chmod 777 /usr/src/app

RUN apt -qq update --fix-missing && \

    apt -qq install -y \

    mediainfo

COPY . .

RUN pip3 install --no-cache-dir -r requirements.txt

RUN apt-get update && apt-get upgrade -y

CMD ["bash", "start.sh"]
