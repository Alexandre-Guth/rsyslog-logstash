FROM alpine
MAINTAINER Negash <i@negash.ru>
RUN apk add --update rsyslog \
  && rm -rf /var/cache/apk/*
  
ADD rsyslog.conf /etc/rsyslog.conf
COPY entrypoint.sh /entrypoint.sh

EXPOSE 514 514/udp

VOLUME [ "/var/log", "/etc/rsyslog.d" ]

ENTRYPOINT ["/entrypoint.sh"]
CMD ["-n"]
