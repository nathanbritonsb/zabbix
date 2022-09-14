#!/bin/bash
NETWORKS=( $(sudo cat /etc/dhcp/dhcpd.conf | grep shared-network | cut -f2 -d' ') )
echo '{ "data": ['
for (( i=0; i<${#NETWORKS[@]}; i++ )); do
	echo '{ "{#NETWORKNAME}":"'${NETWORKS[i]}'"},'
done
