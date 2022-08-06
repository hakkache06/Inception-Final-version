FROM debian:buster

RUN apt-get update -y && \
    apt-get install apache2 git -y
RUN cd /var/www/html && git clone  https://github.com/hakkache06/CV-Portfolio-website.git
ADD ./conf/000-default.conf    /etc/apache2/sites-available/000-default.conf
RUN chown -R www-data:www-data /var/www/html/CV-Portfolio-website/
RUN chmod -R 755 /var/www/html/CV-Portfolio-website/index.html

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

