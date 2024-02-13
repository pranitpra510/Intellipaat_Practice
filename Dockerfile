From ubuntu
RUN apt-get update && apt-get install apache2 -y
RUN rm /var/www/html/index.html
ADD ./index.html /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
CMD systemctl enable apache2
