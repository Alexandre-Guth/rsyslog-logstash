if [ -n "$LOGSTASH" ]; then
	sed s/logstash:5514/$LOGSTASH/g -i /etc/rsyslog.conf
fi

/usr/sbin/rsyslogd $@
