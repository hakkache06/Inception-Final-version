FROM debian:buster

# update and install dependencies needed !!
RUN apt-get update && \
	apt-get install vim openssl nginx -y 
	
#openssl req -x509 -newkey rsa:4096 -days 365 -keyout ca-key.pem -out ca-cert.pem
# set the default config of nginx
ADD ./conf/default /etc/nginx/sites-available/
# Expose the port of the server to external
#EXPOSE 443
ADD ./conf/server_cert.crt /etc/nginx/sites-available/
ADD ./conf/server_key.key /etc/nginx/sites-available/
# run the nginx server in foreground
#RUN chown www-data:www-data -R /var/www/html/wordpress/

CMD ["nginx", "-g", "daemon off;"]