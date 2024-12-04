FROM kalilinux/kali-rolling

ENV DEBIAN_FRONTEND noninteractive

RUN apt update
RUN apt install -y kali-linux-large tightvncserver novnc websockify
RUN apt install -y kali-desktop-xfce
RUN apt install -y nano inetutils-ping

RUN mkdir -p ~/.vnc

RUN echo "password" | vncpasswd -f > ~/.vnc/passwd && \
    chmod 600 ~/.vnc/passwd

USER root
