FROM debian:buster

ARG USER_FTP

RUN apt update && \
apt install -y vsftpd openssl

RUN adduser --gecos $USER_FTP --disabled-password $USER_FTP 
RUN echo $USER_FTP:$USER_FTP | chpasswd
RUN mkdir -p /home/$USER_FTP
RUN echo yhakkach >> /etc/vsftpd.userlist
ADD ./conf/vsftpd.conf /etc/vsftpd.conf
ADD ./conf/start.sh .
ENTRYPOINT [ "sh", "start.sh" ]

