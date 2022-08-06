FROM debian:buster

RUN apt update && \
	apt -y upgrade && \
	apt -y install redis-server && \
	apt -y install php-redis
ADD ./conf/redis.conf /etc/redis/redis.conf
RUN chown www-data:www-data -R  /etc/redis/redis.conf
ENTRYPOINT  [ "redis-server","/etc/redis/redis.conf"]
