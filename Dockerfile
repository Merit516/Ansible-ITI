FROM ubuntu 

RUN apt update -y && apt install ssh-server -y && apt install sudo -y

RUN adduser ansible

RUN echo "ansible:1234" | chpasswd

RUN usermod -aG sudo ansible

ENTRYPOINT service ssh restart && bash