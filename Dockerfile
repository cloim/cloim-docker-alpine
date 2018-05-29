FROM alpine:latest
MAINTAINER cloim <cloimism@gmail.com>

ENV TZ=Asia/Seoul

RUN apk update; apk add --no-cache \
    bash \
    nano \
    tzdata \
    curl \
    openssl \
    git \
    && echo "PS1=\"\u@\w/ $ \"" >> ~/.bashrc \
    && /bin/bash -c "source ~/.bashrc" \
    && cp /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo "$TZ" > /etc/timezone
