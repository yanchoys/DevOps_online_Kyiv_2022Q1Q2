## Task 6

### subTaskA:

```
#!/bin/bash

func(){

if [[ $# -gt 0 ]]
then
	func2 $1
	func3 $1
else
	echo "Write at least 1 symbol"
	echo "Possible command are --target and --all for more info press -h"
fi
}

func2(){

if [[ $1 = --all ]]
then 
	hostnamectl | grep -i hostname 
                ip addr | grep -i inet
fi
}

func3(){
if [[ $1 = --target ]]
then
	sudo ss -tln
fi
}
func  $1
```

### SubTaskB

```
#!/bin/bash
file=apache_logs.txt
regex='\:([0-9]{2})\:([0-9]{2})\:([0-9]{2})'
mostReqPage() {
while read line
do
	awk '{print $7}'|sort |uniq -c|sort -nr| head -n 1
	
#if [[   ]]
done < $file
}
ipMostReq(){
while read line
do

	awk '{print $1}'|sort|uniq -c| sort -nr| head -n 1
done < $file
}
allReqIp(){
while read line
do

	awk '{print $1}'|sort|uniq -c| sort -nr
done < $file

}
mostViewTime(){
while read line
do
awk '{split($4,time,":"); print time[2]":"time[3]}'|
sort|
uniq -c|
sort -nr|
head -n 1
done < $file
}
nonExistPage(){
while read line
do
cat $1 | grep 404 | awk '{print $7}'| sort | uniq 

done < $file
}
botVisitSite(){
while read line
do
grep -i bot|awk '{print $1, "\tUserAgent:",$14,$15}'|sort |uniq -c|sort -nr
done < $file
}
#allReqIp
#ipMostReq
#mostReqPage 
#mostViewTime
#nonExistPage
#botVisitSite
```


### Setting up Crontab
![image](https://user-images.githubusercontent.com/98917290/166166228-1535bf92-f0ba-4b76-ae01-97a19d02930f.png)
