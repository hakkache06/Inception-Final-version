FROM debian:buster
RUN apt install wget
RUN echo "deb http://pub-repo.sematext.com/debian sematext main" | tee /etc/apt/sources.list.d/sematext.list > /dev/null
RUN wget -O - https://pub-repo.sematext.com/debian/sematext.gpg.key | sudo apt-key add -
RUN apt-get update && \
apt-get install sematext-agent


#ADD 
#ENTRYPOINT [ "sh", "run.sh" ]

