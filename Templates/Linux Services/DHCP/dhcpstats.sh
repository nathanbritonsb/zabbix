#!/bin/bash
info="$1"
firstip="$2"
lastip="$3"
case	$info in
	uso)
		dhcpd-pools | grep $firstip | grep $lastip | awk '{print$7}'
		;;
	usopercent)
		dhcpd-pools | grep $firstip | grep $lastip | awk '{print$8}'
		;;
	tcpercent)
		dhcpd-pools | grep $firstip | grep $lastip | awk '{print$11}'
		;;
	*)
		echo "Opção inválida"
		;;
esac

