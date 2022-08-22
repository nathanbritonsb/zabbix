# Dell SCv3000

![zabbix](https://img.shields.io/badge/zabbix-v6.0-red)
![beta](https://img.shields.io/badge/version-beta-orange)
![zabbix](https://img.shields.io/badge/method-snmp/API-blue)

## Method

Monitoring throug native API and SNMP.

## Monitored Items

- Overall System Status (SNMP)
- Controller Status (SNMP)
- Disk Status (SNMP)
- Enclosure Status (SNMP)
- Fan Status (SNMP)
- Power Supply Status (SNMP)
- Temperature Status (SNMP)
- Storage Servers Reads/s, Writes/s and IOPs (API)
- Storage Volumes Reads/s, Writes/s and IOPs (API)

## ToDo

- Create triggers for warning and critical temperatures
- Create triggers for power supply voltages
- Improvments on preprocessing of API Items

## How To

1 - Create user with read only permissions on storage


2 - Identify Storage ID accessing 'https://storage_ip:3033/api/rest/StorageCenter/StorageCenter/' using read only credentials created on last step. The storage ID is the "instanceID".


3 - Import template on Zabbix


4 - Create host and add imported template


5 - On host, edit macros {\$STORAGE.ID}, {\$STORAGE.IP}, {\$API.USERNAME}, {\$API.PASSWORD}

