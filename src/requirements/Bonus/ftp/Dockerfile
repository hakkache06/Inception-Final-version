FROM debian:buster
RUN apt update && \
apt install -y vsftpd openssl
RUN adduser --gecos yhakkach --disabled-password yhakkach 
RUN echo yhakkach:yhakkach | chpasswd
RUN mkdir -p /home/yhakkach
RUN echo yhakkach >> /etc/vsftpd.userlist
ADD ./conf/vsftpd.conf /etc/vsftpd.conf
ADD ./conf/start.sh .
ENTRYPOINT [ "sh", "start.sh" ]

