#section-start dev_container_base
#section-start header
FROM alpine:3.22.4
WORKDIR /app
#section-end
#section-start summon the starting program!
COPY ./files/activate.sh .
CMD ["bash","./activate.sh"]
#section-end
#section-end
