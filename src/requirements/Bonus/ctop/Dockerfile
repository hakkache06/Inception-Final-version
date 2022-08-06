FROM debian:buster

RUN apt update && \
apt-get install ca-certificates curl gnupg lsb-release -y && \
curl -fsSL https://azlux.fr/repo.gpg.key | gpg --dearmor -o /usr/share/keyrings/azlux-archive-keyring.gpg
RUN echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/azlux-archive-keyring.gpg] http://packages.azlux.fr/debian \
  $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/azlux.list >/dev/null
RUN apt-get update && \
  apt-get install  docker-ctop git -y
RUN apt-get install wget

RUN wget https://github.com/jesseduffield/lazydocker/releases/download/v0.8/lazydocker_0.8_Linux_x86_64.tar.gz
RUN tar xvzf lazydocker*.tar.gz
RUN install lazydocker /usr/local/bin
ADD ./conf/run.sh .

CMD [ "lazydocker" ]

