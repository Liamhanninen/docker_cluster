FROM python:2.7.11

MAINTAINER Cafabra

RUN apt-get update

RUN apt-get install -y git

RUN apt-get -y install libjpeg62-turbo-dev libmysqlclient-dev libtiff5-dev zlib1g-dev libfreetype6-dev liblcms2-dev libwebp-dev tcl8.6-dev tk8.6-dev python-tk python-dev libffi-dev libssl-dev libxml2-dev libxslt1-dev libpq-dev libmysqlclient-dev zlib1g-dev python3-pip python-pip python-dev build-essential

#RUN pip install --upgrade pip==8.1.0
RUN pip install --upgrade pip

RUN git clone https://6b4e2c4bce3d248cf60bec06e317c749104bd33d@github.com/cafabra/cafabra_eb.git

RUN pip install -r cafabra_eb/requirements.txt

WORKDIR cafabra_eb/src/scrapr/cluster/crawler

ENV PYTHONPATH=$PYTHONPATH:/cafabra_eb/src
ENV DJANGO_SETTINGS_MODULES cafabra.settings
ENV AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
ENV DOCKER_PASSWORD=$DOCKER_PASSWORD

COPY envs.py /cafabra_eb/src/scrapr/cluster/crawler