FROM evertongava/core-alpine:3.18
LABEL maintainer="Everton Gava <evertongava@mabalus.com>"

RUN set -ex \
	&& apk add --update --no-cache \
		openjdk11-jre-headless \
	&& mkdir -p \
		/srv/app

WORKDIR /srv/app

RUN chown -R app:adm \
		/srv/app