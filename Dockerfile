FROM	ubuntu:latest
MAINTAINER	anndro <mucahit@live.jp>


# Update package list and upgrade the ubuntu
RUN apt-get update
RUN apt-get -y upgrade

# Install openssh server
RUN apt-get install -y openssh-server

# Configure openssh server
RUN mkdir /var/run/sshd
RUN echo 'root:changeme' |chpasswd
RUN echo 'PermitRootLogin yes' > /etc/ssh/sshd_config  

EXPOSE 22

# Run openssh server as deamon
CMD    ["/usr/sbin/sshd", "-D"]
