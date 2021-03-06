FROM ubuntu:19.10  
MAINTAINER alankiy
ENV JULIUS_VERSION 4.5
RUN apt-get update && apt-get install -y curl build-essential && apt-get clean
RUN apt-get install -y zip unzip && apt-get clean
RUN apt-get install -y libpulse-dev
RUN apt-get install -y python-pyaudio python3-pyaudio
RUN curl -OL http://jaist.dl.sourceforge.jp/julius/71011/dictation-kit-$JULIUS_VERSION.zip
RUN unzip dictation-kit-$JULIUS_VERSION.zip && cd /dictation-kit-$JULIUS_VERSION && chmod 755 *.sh && chmod 755 bin/linux/* 
# RUN cd /dictation-kit-$JULIUS_VERSION && ./bin/linux/julius -C main.jconf -C am-dnn.jconf -dnnconf julius.dnnconf -module -input adinnet &
# RUN /bin/bash -ce tail -f /dev/null
