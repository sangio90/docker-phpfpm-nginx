FROM ubuntu:trusty
#l'immagine di partenza è ubuntu trusty, perchè serve la ppa di ondrej per scaricare php7.0fpm

RUN apt-get -y update
RUN apt-get -y install curl wget software-properties-common
RUN add-apt-repository -y ppa:ondrej/php
RUN add-apt-repository -y "deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main"
RUN apt-get -y update
RUN apt-get -y --force-yes install php7.0-fpm

CMD php-fpm7.0
#all'avvio viene lanciato il comando php

EXPOSE 9000
#il servizio php sarà disponibile sulla porta 9000