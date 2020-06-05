FROM        python:3.8-slim

ENV         LANG C.UTF-8
ENV         PROJECTPATH=/home/app/uml-book
ENV         USER app

RUN         set -x \
            && apt-get -qq update \
            && apt-get install -yq git

RUN         useradd -m -d /home/${USER} ${USER} \
            && chown -R ${USER} /home/${USER}

RUN         mkdir -p ${PROJECTPATH}

ADD         . ${PROJECTPATH}

RUN         pip install --no-cache-dir -r ${PROJECTPATH}/requirements.txt
WORKDIR     ${PROJECTPATH}
USER        ${user}
