FROM ubuntu:jammy

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
      && apt-get -y install \
	ca-certificates \
        imapproxy \
        inetutils-syslogd \
        ssl-cert

ADD imapproxy.conf /etc/
ADD entrypoint-ubuntu.sh /entrypoint.sh

EXPOSE 143

CMD /entrypoint.sh
