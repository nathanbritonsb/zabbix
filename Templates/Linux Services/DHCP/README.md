# Linux ISC DHCP Server

![zabbix](https://img.shields.io/badge/zabbix-v6.0-red)
![stable](https://img.shields.io/badge/version-1.0-green)
![zabbix](https://img.shields.io/badge/method-scripts-blue)

## Method

Monitoring throug shell script.

## Monitored Items

- Used IPs
- Used IPs (%)


## ToDo

- nothing so far

## How To

### on dhcp server:

1 - On DHCP Server, create folder "/etc/zabbix/scripts" and upload scripts.

2 - Install sudo and add the following rules:

```
zabbix        ALL=(ALL) NOPASSWD: /bin/cat /etc/dhcp/dhcpd.conf
zabbix        ALL=(ALL) NOPASSWD: /usr/bin/dhcpd-pools
```
PS: Suposing your DHCP config file is in /etc/dhcp/dhcpd.conf

3 - Create the file "/etc/zabbix/zabbix_agent.d/dhcpparameter.conf" with this content:

```
UserParameter=dhcpnetworkdiscover,/etc/zabbix/scripts/dhcp-network-discover | sed '${s/,$/ ] }/};'

UserParameter=networkstats[*],/etc/zabbix/scripts/networkstats $1 $2
```

4 - Restart Zabbix Agent.

5 - Instale o pacote dhcpd-pools

```
apt update
apt install dhcpd-pools
```

### on zabbix server:

1 - Import Zabbix Template and link this to host

2 - Add the templat