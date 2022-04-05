# Task1 Linux
### Login as a root
![sudo](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/images/image_19.jpg)

### Using passwd
![passwd](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/images/image_20.jpg)

#### What system file changes?
>Linux systems use the /etc/shadow file to store user passwords. Traditional password files are maintained in /etc/passwd, but the actual hashed passwords are stored in /etc/shadow.

### List all users
![users](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/images/image21.jpg)
### List the contents of the home directory using the ls command
![ls](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/images/image22.JPG)

### Display all files that contain a character c
![tree](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/images/image23.JPG)

### Command that can determine type of file
`file [option] [filename]`

*EXAMPLE*

`file ~`

*OUTPUT:*

`/home/illia directory`

### Return to home directory from anywhere

`cd ~`

### Difference  of using ls -a and ls -l

`ls -a`

OUTPUT:
```
.
..
.bash_history
.bash_logout
.bashrc
.cache
.config
Desktop
Documents
Downloads
.gnupg
.local
Music
Pictures
.profile
Public
.selected_editor
.sudo_as_admin_successful
Templates
test
.vboxclient-clipboard.pid
.vboxclient-display-svga-x11.pid
.vboxclient-draganddrop.pid
.vboxclient-seamless.pid
Videos
.Xauthority
total 36
```

`ls -l`

OUTPUT:
```
drwxr-xr-x 2 yamomoto illia 4096 бер 26 20:15 Desktop
drwxr-xr-x 2 yamomoto illia 4096 бер 24 12:43 Documents
drwxr-xr-x 2 yamomoto illia 4096 бер 24 12:43 Downloads
drwxr-xr-x 2 yamomoto illia 4096 бер 24 12:43 Music
drwxr-xr-x 2 yamomoto illia 4096 бер 24 12:43 Pictures
drwxr-xr-x 2 yamomoto illia 4096 бер 24 12:43 Public
drwxr-xr-x 2 yamomoto illia 4096 бер 24 12:43 Templates
drwxr-xr-x 2 yamomoto illia 4096 бер 24 22:55 test
drwxr-xr-x 2 yamomoto illia 4096 бер 24 12:43 Videos
```

The main difference of this command is that option -a didn't ignore hidden files unlike option -l

### subtask №5,6
![](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/images/image_1.jpg)
![](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/images/image_2.jpg)
![](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/images/image_3.jpg)
![](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/images/image_4.jpg)
![](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/images/image_14.jpg)
![](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/images/image_16.jpg)
After deleting file labwork 2 soft link is unavailable, because was link to the exact file, but he had gone

### Determine which partitions are mounted in the system

![](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/images/image_8.jpg)

### Determine which partitions are mounted in the system

![](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/images/image_13.jpg)

### Count the number of lines containing a given sequence of characters in a givenfile.

![](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/images/image_24.jpg)

### Using the find command, find all files in the /etc directory containing the host character sequence

![](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/images/image_15.jpg)

### List all objects in /etc that contain the ss character sequence

![](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/images/image_11.jpg)

### Organize a screen-by-screen print of the contents of the /etc directory

![](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/images/image_7.jpg)

###  What are the types of devices and how to determine the type of device?

![](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/images/image_13.jpg)

### List the first 5 directory files that were recently accessed in the /etc directory

![](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m4/images/image_17.jpg)
