FROM debian:wheezy
MAINTAINER Matt Bentley <mbentley@mbentley.net>
RUN (echo "deb http://http.debian.net/debian/ wheezy main contrib non-free" > /etc/apt/sources.list && echo "deb http://http.debian.net/debian/ wheezy-updates main contrib non-free" >> /etc/apt/sources.list && echo "deb http://security.debian.org/ wheezy/updates main contrib non-free" >> /etc/apt/sources.list)
RUN apt-get update

RUN (DEBIAN_FRONTEND=noninteractive apt-get install -y git live-build nano vim)
RUN (mkdir /opt/live &&\
	echo 'export LS_OPTIONS='"'"'--color=auto'"'"'' >> /root/.bashrc &&\
	echo 'eval "`SHELL=/bin/bash dircolors`"' >> /root/.bashrc &&\
	echo 'alias ls='"'"'ls $LS_OPTIONS'"'"'' >> /root/.bashrc &&\
	echo 'alias ll='"'"'ls $LS_OPTIONS -l'"'"'' >> /root/.bashrc &&\
	echo 'alias la='"'"'ls $LS_OPTIONS -la'"'"'' >> /root/.bashrc)

WORKDIR /opt/live

CMD ["/bin/bash"]
