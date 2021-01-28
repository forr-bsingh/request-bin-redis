FROM redis:6.0.9-alpine
LABEL MAINTAINER="Baljeet Singh {bsingh@forrester.com}"
LABEL DESC="Redis layer for REQUEST_BIN"

RUN apk update && apk upgrade && apk add curl

ARG REDIS_PORT

COPY redis.conf /etc/redis/redis.conf

RUN sed -i 's/{{REDIS_PORT}}/'${REDIS_PORT}'/g' /etc/redis/redis.conf

EXPOSE ${REDIS_PORT}

ENTRYPOINT ["redis-server"]
CMD ["/etc/redis/redis.conf"]