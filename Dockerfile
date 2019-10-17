FROM python:3.6.8

RUN apt-get -y update
RUN apt-get install -y --fix-missing \
    wget \
    nano \
    htop \
    tmux \
    unzip \
    zip \
    && apt-get clean && rm -rf /tmp/* /var/tmp/*

COPY . /code
WORKDIR /code
RUN pip install -r requirements.txt

CMD [ "python", "test.py" ]
