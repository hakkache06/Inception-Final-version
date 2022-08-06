FROM debian:buster

RUN apt-get update && \
	apt-get install wget -y && \
	apt-get install unzip vim  -y && \
	apt-get install php-fpm php-mysql -y && \
	apt-get upgrade -y  && \
	apt-get -y install php-redis

# Download the latest WordPress version available at https://wordpress.org/download/ and extract it in a directory on your server:

RUN cd /tmp && wget https://wordpress.org/latest.zip 
RUN mkdir -p /var/www/html && unzip -d /var/www/html/ /tmp/latest.zip
RUN mv /var/www/html/wordpress/wp-config-sample.php  /var/www/html/wordpress/wp-config.php
ADD ./conf/wp-config.php  /var/www/html/wordpress/wp-config.php
ADD ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf
RUN cd /var/www/html/wordpress/wp-content/plugins && wget https://downloads.wordpress.org/plugin/redis-cache.2.1.6.zip && unzip redis-cache.2.1.6.zip && rm -rf redis-cache.2.1.6.z
ADD ./conf/object-cache.php  /var/www/html/wordpress/wp-content/object-cache.php
RUN chown www-data:www-data -R /var/www/html/wordpress
RUN service php7.3-fpm start
ENTRYPOINT  [ "/usr/sbin/php-fpm7.3","-F" ]
