## Rsyslog - Logstash

### What it does?

Loads logs from local port to ship them to Logstash

### How it works?

Add the environment variable LOGSTASH in your docker-compose to set up your Logstash destination

```LOGSTASH: my_private_logstash_ip:my_TCP_logstash_port```

If you prefer to use the UDP port, edit the last line of the [rsyslog.conf](https://github.com/Alexandre-Guth/rsyslog-logstash/blob/master/rsyslog.conf) file before building the container image

### Where can I pull the docker image?

https://hub.docker.com/r/alexandreguth/rsyslog-logstash/
