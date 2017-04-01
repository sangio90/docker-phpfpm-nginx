FROM nginx:alpine
#immagine di partenza nginx:alpine

ENV PHPFPM_HOST phpfpm
ENV PHPFPM_PORT 9000

VOLUME ["/app"]
#/app viene indicata come cartella speciale, condivisa e persistente

ADD /resources/* /resources/
#copio il file vhost.conf nell'immagine

RUN chmod +x /resources/entrypoint.sh

ENTRYPOINT ["/resources/entrypoint.sh"]
#alla RUN di un container basato su questa immagine viene lanciato nginx con direttiva 'daemon off' (questa direttiva mantiene il processo nginx attivo in ascolto anzichè chiudere il PID principale, cosa che farebbe terminare l'esecuzione del container);

EXPOSE 80
#espongo la porta 80