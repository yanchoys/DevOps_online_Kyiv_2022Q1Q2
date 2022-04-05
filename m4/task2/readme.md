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
...
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
...
```

##### UID ranges
- 0 reserved for root
- 1-999 fro pseudo-userd,daemon
- 1000-65535 
- UID - user identifier
- GID - group identifier
 `groups` - command for check which groups belongs to user
 
 it can be defined in **/etc/passwd** on 4 position
 
 To change username `usermod -l login-name OLD-NAME`

To watch structure of skell_dir need to print `cat /etc/skel`

![image](https://user-images.githubusercontent.com/98917290/161426890-5137ef91-766c-4e8f-a09d-070e85af01ec.png)


To remove user from file system need to write down `sudo userdel username` and `sudo rm -r /homedir/dir`

To lock user account need `sudo usermod -L username` to unlock `sudo usermod -U username`

To delete user password for subsequent change it need to write `sudo passwd -e username`

To change owner of file `chown username file.type`

![image](https://user-images.githubusercontent.com/98917290/161643108-00ecc174-7422-4da0-b561-af94582b7f29.png)

To change access permit ilustrated below

![image](https://user-images.githubusercontent.com/98917290/161426854-2eea4dcc-5c59-40bb-81be-f8e646589462.png)

first triplet acces rights is for user, second for group, third for others 
rwx - read, write, execute

The octal number is the sum of the permission values, for example:
3 (1+2) – able to execute and write
6 (2+4) – able to write and read

The umask command in Linux is used to set default permissions for files or directories the user creates.

Acess permisions for umask is the same as for chmod

| Permission | Octal value | Binary Value | Description                                              |
|------------|-------------|--------------|----------------------------------------------------------|
| ---        | 0           | 000          | No permission                                            |
| --x        | 1           | 001          | only permission to execute                               |
| -w-        | 2           | 010          | only permission to write                                 |
| -wx        | 3           | 011          | only permission to write and execute                     |
| r--        | 4           | 100          | only permission to read                                  |
| r-x        | 5           | 101          | permission to read and execute                           |
| rw-        | 6           | 110          | permission to read and write                             |
| rwx        | 7           | 111          | permission to do all three, i.e. read, write and execute |

##### What is sticky bit
**Sticky Bit** is mainly used on folders in order to avoid deletion of a folder and it’s content by other users though they having write permissions on the folder contents. If Sticky bit is enabled on a folder, the folder contents are deleted by only owner who created them and the root user.
