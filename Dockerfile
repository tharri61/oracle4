FROM python:latest

RUN apt update && apt upgrade -y

RUN pip3 install -U pip

COPY requirements.txt /requirements.txt
RUN cd /
RUN pip3 install -U -r requirements.txt
RUN mkdir /oracle4
WORKDIR /oracle4
COPY start.sh /start.sh

CMD ["/bin/bash", "/start.sh"]
