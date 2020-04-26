FROM golang:1.14.2 AS lightwalletd_base

ADD ./lightwalletd /usr/bin/lightwalletd
ADD ./prod/entrypoint.sh /srv/$LWD_USER/

ARG LWD_USER=lightwalletd
ARG LWD_UID=2002

RUN useradd --home-dir /srv/$LWD_USER \
            --shell /bin/bash \
            --create-home \
            --uid $LWD_UID\
            $LWD_USER
USER $LWD_USER
WORKDIR /srv/$LWD_USER

ENTRYPOINT "/srv/$LWD_USER/entrypoint.sh"
