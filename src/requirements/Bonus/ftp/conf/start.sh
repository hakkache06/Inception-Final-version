#!/bin/bsh
# service vsftpd start

# useradd yhakkach
# adduser --gecos $USER_FTP --disabled-password $USER_FTP 

# echo $USER_FTP:$USER_FTP | chpasswd $USER_FTP
# echo $USER_FTP:$USER_FTP | chpasswd

# chown -R $USER_FTP:$USER_FTP /var/run/vsftpd/empty

# mkdir -p /home/$USER_FTP/ftp
# mkdir -p /home/$USER_FTP/ftp/files
# echo yhakkach >> /etc/vsftpd.userlist
# chmod a-w  /home/$USER_FTP/ftp
# chmod a-w /home/$USER_FTP/ftp/files
# chmod 755 /etc/ssl/private/vsftpd.pem
exec  vsftpd /etc/vsftpd.conf

