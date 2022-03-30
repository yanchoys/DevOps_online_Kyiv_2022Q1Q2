# Task 2
---
##### Structure of /etc/passwd /etc/group
`cat /etc/passwd < text.txt && /etc/group << text.txt`

###### Filds which presented in this file
 1. username
 1. password marked as x
 1. UID
 1. GID
 
OUTPUT:
```
gdm:x:125:130:Gnome Display Manager:/var/lib/gdm3:/bin/false
sssd:x:126:131:SSSD system user,,,:/var/lib/sss:/usr/sbin/nologin
systemd-coredump:x:999:999:systemd Core Dumper:/:/usr/sbin/nologin
vboxadd:x:998:1::/var/run/vboxadd:/bin/false
sshd:x:127:65534::/run/sshd:/usr/sbin/nologin
tmp:x:1001:1001:-,-,-,-,-:/home/tmp:/bin/bash
yamomoto:x:1000:1000:Yamik,-,380952108367,-,none:/home/illia:/bin/bash
root:x:0:
daemon:x:1:
bin:x:2:
sys:x:3:
adm:x:4:syslog,yamomoto
tty:x:5:syslog
disk:x:6:
lp:x:7:
```

##### UID ranges
