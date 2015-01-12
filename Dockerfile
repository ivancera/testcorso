# Scelgo l'immagine base da cui partire
FROM debian:7
# Inserisco i dati per il proxy
# Inserisco il nome di chi crea l'immagine
MAINTAINER pippo "pippo@arpa.piemonte.it"
# Eseguo 3 righe di comando con RUN
RUN apt-get update
RUN apt-get install -y nginx
RUN echo 'Ciao, io sono nel tuo containers' > /usr/share/nginx/www/index.html
# Indica che il container usa la porta 80
EXPOSE 80
