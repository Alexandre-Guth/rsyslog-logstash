#!/bin/sh
if [ -n "$LOGSTASH" ]; then
	sed s/private_ip_logstash:5000/$LOGSTASH/g -i /etc/rsyslog.conf
fi

exec rsyslogd "$@"
