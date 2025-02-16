```bash

#### Create user:
  - root: marvin
  - admin: marvingm

`````Marlie221244444444``````
`````@@01Marlie221244444`````

aws-marvingm-console@@@@941245766704

--- 

```

## hands on:
- IAM : Permissions
- IAM Policies
- CLI
- CLI - Cloudshell
- IAM Roles for Services
- IAM Credentials Report
- IAM Access Advisor
- IAM Best Practices
- Share Resposibility Model for IAM
  - create own users, roles, policies and monitoring,
  - enabled MFA, rotate que keys
  - review permissions in aws
- 

<img width="743" alt="image" src="https://github.com/user-attachments/assets/60200807-8c52-4d7b-9f19-d8a8e3cb2960" />


--- 

```bash
Last login: Fri Feb 14 23:04:37 on console
aws@Marvins-MacBook-Pro ~ % aws --version
aws-cli/2.24.5 Python/3.12.6 Darwin/22.6.0 exe/x86_64
aws@Marvins-MacBook-Pro ~ % aws --version
aws-cli/2.24.5 Python/3.12.6 Darwin/22.6.0 exe/x86_64
aws@Marvins-MacBook-Pro ~ % aws configure
AWS Access Key ID [None]: AKIA5WJU6TQYGH2HLYEU44444444444
AWS Secret Access Key [None]: 1zhxPyPLY6ZuOuuNOpIY2nOsGcIhDM0F4xPnqnYt44444444
Default region name [None]: ca-central-1 
Default output format [None]:

aws@Marvins-MacBook-Pro ~ % aws iam list-users
{
    "Users": [
        {
            "Path": "/",
            "UserName": "marvin",
            "UserId": "AIDA5WJU6TQYLTOUV5FL7",
            "Arn": "arn:aws:iam::941245766704:user/marvin",
            "CreateDate": "2023-06-19T15:08:05+00:00",
            "PasswordLastUsed": "2023-06-19T15:09:16+00:00"
        },
        {
            "Path": "/",
            "UserName": "marvingm",
            "UserId": "AIDA5WJU6TQYHSXKTCWAA",
            "Arn": "arn:aws:iam::941245766704:user/marvingm",
            "CreateDate": "2025-02-15T19:36:43+00:00",
            "PasswordLastUsed": "2025-02-15T20:40:20+00:00"
        }
    ]
}


```

--- 

- Amazon EC2
  - bootstrapping - user data
  - boot tasks:
    - installing update, software
    - user data need sudo rights
- t2.micro is part of aws free tier (up to 750 hours per month)

### hands on 
- launching EC2 instance running linux
- EC2 user data
- EC2 Instance types

- Security Groups - fundamentals of network security in asws
- they control how traffic is allowed into or out of our EC2 Instances
- only contain allow rules
- eg:
- <img width="578" alt="image" src="https://github.com/user-attachments/assets/c1e352f6-bf9e-4472-b59a-8a909bb8ef7c" />

- are like firewall on EC2 isntances
- they regulate
  - access to ports
  - authorized ip ranges - ipv4 and ipv6
  - control of inbound network
  - control of outbound network
- good to know:
  - can be attached to multiple instances
  - locked down to a region / VPC combination
  - is good to maintain one separate security group fro SSH access
  - timeout - security group error
  - connection refused -
  - by default all inbound traffic is blocked
  - and by default all outbound traffic is allowed
 
- Classic ports to know
  - SSH - 22
  - FTP - 21
  - SFTP - 22
  - HTTP - 80
  - HTTPS - 443
  - 3389 - RDP 

---
### hands on 
- Security groups
- enable and disable http port

--- 
- SSH sumary
```bash
aws@Marvins-MacBook-Pro ~ % ssh ec2-user@54.161.223.113 -i EC2Tutorial.pem
```

- IAM Roles
- user IAM Roles for your ec2 instances

<img width="747" alt="image" src="https://github.com/user-attachments/assets/057e801b-f6bb-4054-8e9f-31937f0484e8" />

---
### Storage for EC2 Instances

- EBS Volume - Elastic Block Store
- network drive you can attached to your instances
- allow your instances to persist data, even after termination
- 1 EBS can be only mounted to one EC2
- bound to a specific Avail zone
- you of EBS as network usb sticks
- no physical drive
- network drive

<img width="755" alt="image" src="https://github.com/user-attachments/assets/9033a80d-d94c-4d4d-aedf-c1e2d6bd3ddf" />


- EBS - Delete on termination attribute
- the root vol is terminated by default with the instance
- new EBS termination is disabled

- EBS Multi-Attach - out of scope examen
- EBS Snapshots
- can copy snapthos across AZ or Region

<img width="602" alt="image" src="https://github.com/user-attachments/assets/dd49a8d6-2511-48f2-a0ec-d04c62ca0c10" />

- EBS Snapthots Features
  - move snapthots to an "archive tear" - 75% cheaper
  - takes withing 24 to 72 hrs for restoring
- Recycle Bin for EBS snapshots
  - rules to retain deleted snapshots
 
 ---
 
### AMI Overview
- Amazon Machine Image
- Customization of an EC2 Instance
- Public AMI
- Own AMI
- From Marketplace

### hands on 
Create AMI and launch new instances from AMI 

- EC2 Image Builder
- used to automate the creation of VMs or container images
- schedule packages updates, etc
- free service 

<img width="808" alt="image" src="https://github.com/user-attachments/assets/8c8edda1-30bb-457f-b178-c67a02bb8f92" />

--- 

- EC2 Instance Store
  - better i/o performace
  - ephemeral storage
  - good for buffer/cache/temp data
 
- EFS - Elastic File System
- Managed NFS
- can be mounted on 100s of EC2
- share network fs
- for linux ec2 instances in multi-AZ
- highly available, scalable, more expensive than gp2, pay per use

<img width="438" alt="image" src="https://github.com/user-attachments/assets/9c8ea40d-9306-457e-9965-278bf89a7964" />
  
- EFS IA - infrequent access
- cost-optimized for files not accessed every day
- 92% lower cost compared to EFS standard
- EFS will automatically move your files to EFS-AI based on the lst time they were accessed

<img width="271" alt="image" src="https://github.com/user-attachments/assets/baadf53f-bed9-4c71-9c80-9e3e066e75f8" />

- shared responsibility model for EC2 Storage

- Amazon FSx
- fully managed service
- to launch 3rd party file systems on aws
- FSx for Lustre
  - hight performance computing
  - linux and cluster
  - machine learning, video processing, financial modeling
  - scales up to 100s GB/s millions IOPS
<img width="625" alt="image" src="https://github.com/user-attachments/assets/37a4eaef-b580-4109-96ce-d43a78f16ab1" />

- FSx for Windows
  - NTFS over SMB
  - also integrated with ms active directory
<img width="346" alt="image" src="https://github.com/user-attachments/assets/a3742627-1161-4ea6-b74d-3f6a2050cd82" />

- FSx for NetApp ONTAP

- EC2 Instance Storage - Summary
<img width="675" alt="image" src="https://github.com/user-attachments/assets/8b99028d-0798-412c-8681-9ae917882d96" />

---
### Elastic Load Balancing and Auto Scaling Groups 

- Scalability
  - vertical - increase the size of the instance - from t2.micro to t2.large
    - there are limits, hardware etc.
  - horizontal = elasticity - increase the number of instances
    - out and in
    - distributed systems
  
- High Availability
  - across multi AZ
  - auto scaling group multi AZ

- Scalability vs Elasticity vs Agility
- Scalabilty - ability to accommodate a larger load by making the hardware stronger
- Elasticity - ones a system is scalable, elasticity will be some "auto-scaling" based on the load
  - pay-per-use, match demand, optimize costs

- Agility
  - IT resources are only a click away
  - meaning you can reduce the time to make those resources available from weeks to minutes 

- ELB
- forward internet traffic to multiple servers EC2 Instances downtream
- spread load
- expose a single point of access - DNS
- seamlessly handle failures of downtream instances
- regular health checks
- provide SSL termination - HTTPS
- high availabilty across zones
- managed load balancer

- 4 Kinds
- Application LB - HTTP/HTTPS - layer 7
- Network LB - TCP - Layer 4
- Gateway LB - layer 3

<img width="832" alt="image" src="https://github.com/user-attachments/assets/9687396c-7ea6-42c5-b6fa-9e3f24ad7ad8" />

### hands on ELB

- Auto Scaling group - ASG
- scale out / scale in
- ensure we have min ans max number of machines running
- automatically register new isntances to a load balancer
- replace unhealth instance
- cost saving
- 

### hands on ASG

### User data
```bash
#!/bin/bash
# Use this for your user data (script from top to bottom)
# install httpd (Linux 2 version)
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html
```








