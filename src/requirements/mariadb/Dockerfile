FROM debian:buster

RUN apt-get update && \
	apt-get install mariadb-server -y && \
	apt-get install net-tools -y

#ADD wp_db.sql /root/wp_db.sql
RUN mv /etc/mysql/mariadb.conf.d/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf.old
ADD ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
ADD ./conf/run.sh .
ADD ./tools/dbexport.sql .
ENTRYPOINT [ "bash", "./run.sh"]



