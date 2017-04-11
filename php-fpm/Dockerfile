FROM php:7-fpm
#immagine di partenza nginx:alpine

VOLUME ["/app"]
#/app viene indicata come cartella speciale, condivisa e persistente

RUN yes | pecl install xdebug
#ADD /resources/* /resources/
COPY  /resources/custom.ini /usr/local/etc/php/conf.d/custom.ini
#copio il file php.ini nell'immagine

#RUN chmod +x /resources/entrypoint.sh

#ENTRYPOINT ["/resources/entrypoint.sh"]
#alla RUN di un container basato su questa immagine viene lanciato nginx con direttiva 'daemon off' (questa direttiva mantiene il processo nginx attivo in ascolto anzichè chiudere il PID principale, cosa che farebbe terminare l'esecuzione del container);

#CMD nginx -g 'daemon off;'

EXPOSE 9000
#espongo la porta 9000