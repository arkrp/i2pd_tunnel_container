#section-start dev_container_base
#section-start header
FROM debian:trixie-20260421
WORKDIR /app
#section-end
RUN apt-get update
RUN apt-get install -y curl
RUN curl -L -O https://github.com/PurpleI2P/i2pd/releases/download/2.60.0/i2pd_2.60.0-1trixie1_amd64.deb
RUN apt-get install -y /app/i2pd_2.60.0-1trixie1_amd64.deb
RUN mkdir /root/.i2pd
COPY tunnels.conf /root/.i2pd
#section-start summon the starting program!
CMD ["i2pd"]
#section-end
#section-end
