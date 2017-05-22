FROM alpine
MAINTAINER Negash <i@negash.ru>
RUN apk add --update rsyslog \
  && rm -rf /var/cache/apk/*
  
ADD rsyslog.conf /etc/rsyslog.conf

EXPOSE 514 514/udp

VOLUME [ "/var/log", "/etc/rsyslog.d" ]

ENTRYPOINT [ "rsyslogd", "-n" ]
