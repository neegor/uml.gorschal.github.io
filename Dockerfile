FROM        python:3.7-alpine

ENV         LANG C.UTF-8
ADD         . /opt/algorithms-list/app
RUN         pip install --no-cache-dir -r /opt/algorithms-list/app/requirements.txt

WORKDIR     /opt/algorithms-list/app
