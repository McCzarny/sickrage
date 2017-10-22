FROM libreelecarm/python:1.0.1
MAINTAINER mcczarny@gmail.com

RUN wget https://github.com/SickRage/SickRage/archive/master.zip -O temp.zip \
  && unzip temp.zip \
  && rm temp.zip \
  && mv /SickRage-master /sickrage 

EXPOSE 8081

VOLUME ["/config", "/data", "/downloads", "/tv-shows"]

CMD ["/usr/bin/python", "/sickrage/SickBeard.py", "--datadir", "/data", "--config","/config/config.ini", "--nolaunch"]
