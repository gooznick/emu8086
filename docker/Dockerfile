from ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
RUN dpkg --add-architecture i386 && apt update && apt install -y wine32 x11-apps
RUN echo 'root:root' | chpasswd
RUN mkdir /opt/emu8086
COPY *.exe /opt/emu8086
ENV QT_X11_NO_MITSHM=1

RUN useradd -m -s /bin/bash user && echo "user:user" | chpasswd
COPY run_emu8086.sh /home/user
RUN chmod +x /home/user/run_emu8086.sh
USER user

WORKDIR /home/user

ENTRYPOINT ./run_emu8086.sh
