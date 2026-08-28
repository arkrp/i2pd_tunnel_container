#section-start dev_container_base
#section-start header
FROM debian:trixie-20260421
WORKDIR /app
#section-end
RUN apt-get update
RUN apt-get install -y curl
#RUN curl -L -O https://github.com/PurpleI2P/i2pd/releases/download/2.60.0/i2pd_2.60.0-1trixie1_amd64.deb
RUN curl -L -O https://github.com/PurpleI2P/i2pd/releases/download/2.61.0/i2pd_2.61.0-1trixie1_amd64.deb
RUN apt-get install -y /app/i2pd_2.60.0-1trixie1_amd64.deb
RUN apt-get install -y autossh
RUN mkdir /root/.i2pd
COPY config/tunnels.conf /app
COPY config/autossh_tunnels.sh /app
COPY config/ssh_private_key /app
COPY files/startscript.sh /app
#section-start summon the starting program!
CMD ["bash", "/app/startscript.sh"]
#CMD ["i2pd"]
#section-end
#section-end
