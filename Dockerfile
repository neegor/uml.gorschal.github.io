FROM        python:3.7-alpine

ENV         LANG C.UTF-8

RUN         apk update \
            && apk add --virtual build-deps gcc musl-dev python3-dev

WORKDIR     /opt/algorithms-list/app

ADD         requirements.txt /opt/algorithms-list/app/
RUN         pip install --no-cache-dir -r /opt/algorithms-list/app/requirements.txt
RUN         apk del build-deps

ADD         . /opt/algorithms-list/app
