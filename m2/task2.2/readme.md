# Creating EC2 instance

Set up instance:
- Security group.
Create your own firewall rules or select the default VPC security group.
- Repository.
EC2 offers storage based on a magnetic disk or SSD. To begin with, it is recommended to use the volumes of EBS gp2.
- To complete the configuration process, click Launch Instances.
Connect to instance:
- Connecting usig SSH protocol with key pair (.pem).
- Select Connect. A window will open that indicates that you are connected to your instance
![EC2](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.2/images/instances.jpg)

# Creating snapsot of instance
![snapshot](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.2/images/snapshots.png)

# Launch the second instance from backup
to launch the second instance from from backup you should take a snapshot of your instance, than create an AMI from that snapshot.
![AMI](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.2/images/AMI.png)

# Creating an additional Disk_D
Creating, attaching and detaching in AWS console is simple work, just click few button(create volume, attach volume).
After attaching the volume, need to mount it in instance 
```
sudo mkfs -t ext4 *device_name*
sudo mkdir *mount_point*
sudo mount *device name* *mount point*
```
![Disk_D](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.2/images/volumes.png)

# Amazon Route 53 and free domain
Interesting fact about the name of service route 53, its name with reference to Port 53, which handles DNS for both the TCP and UDP traffic requests.
The term Route may signify the routing, or perhaps the popular highway naming convention.


## Created Hosted Zone
![hostedZone](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.2/images/hostedzone.png)
## Registered free domain
![Domain](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.2/images/Domain.JPG)

# Launching amazon lightsail Word Press
Configured WordPress lightsail instance

![WordPress](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.2/images/WordPress.JPG)

Conneting to the instance to look what is inside

![WordPressRun](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.2/images/ConnectedWP.JPG)

# Create own repository s3
Creating a bucket is a very light deal

![s3](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.2/images/s3.png)

Using CLI in s3 
The first what need is create a role and download the keys which is needed to configure the s3 bucket

![CLI](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.2/images/s3CLI.JPG) 

# Deploying and running docker

```
sudo amazon-linux-extras install docker
sudo yum install docker
sudo service docker start 
sudo systemctl enable docker
sudo usermod -a -G docker ec2-user
touch Dockerfile
docker build -t hello-world .
docker images --filter reference=hello-world
```
Output
```
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
hello-world         latest              e9ffedc8c286        4 minutes ago       241MB
```
![DockerResp](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.2/images/CentosDocker.JPG)
`docker run -t -i -p 80:80 hello-world`
Fill in browser ip of instance
![DockerHell](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.2/images/DockerHello.JPG)

# Lambda Function
This service means that anyone can compile the code without thinking where and how it will start

![Lambda](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.2/images/LambdaAWS.JPG)

# Bucket WebSite
Created [website](http://ignatyev.pp.ua/) with help S3 service

![WebSite](https://github.com/yanchoys/DevOps_online_Kyiv_2022Q1Q2/blob/main/m2/task2.2/images/myBucketWeb.JPG)
