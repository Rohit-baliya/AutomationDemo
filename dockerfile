# base image
FROM ubuntu 
RUN apt update ; apt install apache2 -y
# cd in /var/www/html/
WORKDIR /var/www/html/
# copy content local to image 
COPY    index.html     .
# run during start of container 
CMD ["apache2ctl","-D","FOREGROUND"]
