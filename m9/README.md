# Resume
Final project of deployment resume with css and scripts via Jenkins

## Step 1
Launch an instance on ubutu 20.02 with inbound rules of security group which access to ports: 
- SSH(22) 
- HTTP(8080)
Create SSH key for GitHub and deploy public key to GIT
Also need to create a key and attach it to instance

## Step 2
Downloan missing plugins
- Ansible
- Terrafrom
- Publish over SSH

## Step 3
Modify IAM role of Jenkins master
![image](https://user-images.githubusercontent.com/106600215/177997492-803c8e44-3c9e-47a3-a089-94a6d79ef69c.png)


## Step 4
Download terraform to Jenkins master
Create a terrafrom file (i was using ATOM software to easier write a terrafrom code) and write down creating:
- Instance
- Security group
- Addition key for instances
- Elastic IP for Apache server

## Step 5
Download Ansoble to Jenkins master
Create files:
- Ansible playbook
- Inventory file
- groups_var file with ansible user and ansible_ssh_key

![image](https://user-images.githubusercontent.com/106600215/177997893-a8c116a8-6a89-4a40-a54e-5c3169de4b8f.png)

## Step 6
Create a pipeline in Jenkins master and start it
```
pipeline {
    agent any

    stages {
        stage('Git checkout') {
            steps {
               git branch: 'main', credentialsId: 'jenk_aws_deploy', url: 'git@github.com:yanchoys/DevOps_online_Kyiv_2022Q1Q2.git'
            }
        }
        stage('Terraform init'){
            steps{

                sh ('cd /var/lib/jenkins/workspace/final_proj/m9/; terraform init') 
                sh ('pwd')
            }
        }
        stage('Terraform Apply'){
            steps{
                sleep(10)
                sh ('cd /var/lib/jenkins/workspace/final_proj/m9/; terraform $action --auto-approve')
                sh ('pwd')
                
            }
        }    
        stage('Ansible playbook'){
            steps{
                sleep(20)
                ansiblePlaybook disableHostKeyChecking: true, installation: 'ansible', inventory: '/var/lib/jenkins/ansible/inv.txt', playbook: '/var/lib/jenkins/ansible/playbook.yml'
            }
        }
        stage('Publish over SSH'){
            steps{
                sleep(15)
        sshPublisher(publishers: [sshPublisherDesc(configName: 'apach', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: 'echo $BUILD_ID', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '*.html css/**/* images/**/* scripts/**/*')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
            }
        }    
    }        
}
```
## Result

![image](https://user-images.githubusercontent.com/98917290/178026413-0df924fb-73b2-4558-8b1b-4f3ac21885d3.png)

![image](https://user-images.githubusercontent.com/98917290/178022357-03f828f6-31d4-4f0c-8675-1a7b17d0d843.png)
