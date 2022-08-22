# Asterisk Template Monitor

Its the oficial template of zabbix with some improvements.

## Instructions

To monitor Asterisk server, add the server with these requirements:

- On manager.conf of Server, add these settings:
> [general]
> 
> displaysystemname = yes
> 
> enabled = yes
> 
> port = 5038
> 
> bindaddr = 0.0.0.0

> [zmonitor]
> 
> secret = 12b7f35667776f582dbd3fb966ef7942
> 
> writetimeout = 500
> 
> permit = XXX.XXX.XXX.XXX/255.255.255.0
> 
> read = system,call,log,verbose,command,agent,user,config
> 
> write = system,command
> 

- Add one interface to host with whatever port to script get IP and monitor the service status.

- Add these Macros:

> {$AMI.PORT} = AMI terminal port (Default: 5038)
> 
> {$AMI.USERNAME} = AMI manager username
> 
> {$AMI.SECRET} = AMI manager password
> 
> {$AMI.URL} = URL from API of Asterisk Server (e.g http://XXX.XXX.XXX.XXX:8088/rawman)
> 
