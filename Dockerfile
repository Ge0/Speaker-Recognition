FROM ubuntu

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
	&& apt-get install -y python-pip python-tk \
    && useradd -ms /bin/bash speakerrecognition

USER speakerrecognition
WORKDIR /home/speakerrecognition

COPY --chown=speakerrecognition . Speaker-Recognition

WORKDIR /home/speakerrecognition/Speaker-Recognition
RUN pip install -U -r requirements.txt

CMD python test.py
