FROM python:2.7.11

MAINTAINER liam

RUN apt-get update

RUN apt-get install -y git

RUN apt-get -y install libjpeg62-turbo-dev libmysqlclient-dev libtiff5-dev zlib1g-dev libfreetype6-dev liblcms2-dev libwebp-dev tcl8.6-dev tk8.6-dev python-tk python-dev libffi-dev libssl-dev libxml2-dev libxslt1-dev libpq-dev libmysqlclient-dev zlib1g-dev python3-pip python-pip python-dev build-essential

#RUN pip install --upgrade pip==8.1.0
RUN pip install --upgrade pip

RUN git clone #repo

RUN pip install -r requirements.txt

WORKDIR cafabra_eb/src/scrapr/cluster/crawler