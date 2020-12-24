ARG BASE_IMAGE
ARG ARCH
FROM ${BASE_IMAGE:-roxedus/base:2020-12-24_22}-${ARCH:-linux-amd64}

LABEL maintainer="christronyxyocum,Roxedus"

ENV fpm="false" branch="v2-master"

# add local files
COPY root/ /


# ports and volumes
EXPOSE 80
VOLUME /config
