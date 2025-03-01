![image](https://github.com/user-attachments/assets/5a1b3c2b-3e50-49ac-a4fb-20161a26a75b)```bash

#### Create user:
  - root: marvin
  - admin: marvingm

`````Marlie221244444444``````
`````@@01Marlie221244444`````

aws-marvingm-console@@@@941245766704
http://demoelb-371034363.us-east-1.elb.amazonaws.com/
https://marvingm-demo-s30-v1.s3.us-east-1.amazonaws.com/coffee.jpg
marvingm-demo-s30-v3

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

- ASG - Scaling strategies
- manual scaling
- dynamic scaling
  - simple /step scaling
  - when claudwatch alert is triggered ex : CPU > 80% or CPU < 30 to add and remove 
- Target Tracking scaling
  - example want the aveg cpu to stay ~40%
- schedule scaling
- predictive scaling
  - machine learning - will forecast 

- ELB and ASG - Summary
<img width="440" alt="image" src="https://github.com/user-attachments/assets/b3eac506-a405-4386-a7f6-499e2b01b0f8" />

---

### Amazon S3
- one of the main building blocks of aws
- infinitely scaling storage
- uses cases
  - backup, disaster, archive, hybrid cloud storage, media hosting, data lakes, big data analytics, software delivery, static website
- store files into buckets
  - object = files
  - s3 buckets = directories
- globaly unique names
- define at region level
- naming convention
- objects have a key
- key is the full path - prefix + oejct name
- max object size is 5TB - 5kGB
- metadata
- tags
- version id - if versioning is enabled

### hands on S3

- Security bucket policy
- user-based
- resource-based security
  - bucket policies - rules from console - common way
  - object access control list - ACL 
  - bucket access control list - ACL 
- an IAM principal can access an S3 object if
  - the user IAM permissions ALLOW it OR the resouce policy ALLOWS it
  - AND there's no explicit DENY
- Encrypt

- JSON based policies

<img width="434" alt="image" src="https://github.com/user-attachments/assets/c243f1c2-5f09-4135-a964-5f3fd837057a" />

- public access - use bucket policy
<img width="393" alt="image" src="https://github.com/user-attachments/assets/ab4c0be9-4a74-4349-a686-1492c8744fb7" />

- user access to s3 - IAM permissions
<img width="372" alt="image" src="https://github.com/user-attachments/assets/ab85d134-9460-4052-99ac-352846618e10" />

- EC2 Instance access - user IAM Roles


### hands on S3 - Security
https://marvingm-demo-s30-v1.s3.us-east-1.amazonaws.com/coffee.jpg

### hands on S3 - static website

http://marvingm-demo-s30-v1.s3-website-us-east-1.amazonaws.com/beach.jpg

- S3 - Versioning
- best practice to version your buckets

- S3 - Replication
  - 
- must enable versioning in source and destinatio buckets
- Cross-region replication - CRR 
- Same-region replication - SRR
- buckets can be in different aws accounts
- copyin asyncrhionous
- must give proper IAM perrmissions to S3

- Use cases
  - CRR - compliance, lower latency access, replication across accounts
  - SRR - log aggregatio, live replication between production and test accounts

### hands on S3 - replication 
  
- S3 Storage Classes
  
  - S3 Standard - General purpose - 99.99 avail - used for frequently accessed data - low latency and high throughput - for big data analytics, mobile and gaming applicaion, content distrubution
  - S3 Standard - Infrequent access IA - less frequently access but requires rapid access when needed - lower cost than S3 Standard - 99.9 avail - disaster recoveries, backups
  - S3 One Zone-Infrequent Access - one single AZ, 99.5% avail, secundary backup copies of on-prem data, or data you can recreate.

  - S3 Glacier Instant Retrieval - millisecond retrieval - minumun storage duration 90 days
  - S3 Glacier Flexible Retrieval - expedited a to 5 mins - standard 3 - 5 hours - bulk 5 to 12 hours - free - minumun storage duration 90 days
  - S3 Glacier Deep Archive - long term storage - standard 12 hours, bulk 48 hours - lowest cost - min storage duration 180 days
  *princing for storage + object retrieval cost*
  *low-cost meant for archiving / backup*

  - S3 Intelligent Tiering
    - moves objects automatically beween access tiears based on usage
    - non retrieval charges in S3 intelligent-tiering
    - small monthly monitoirn and auto-tiering fee
<img width="432" alt="image" src="https://github.com/user-attachments/assets/6e21e60c-45e8-4397-8740-f9c5b7347692" />

- S3 Durability and Availability
  - Durability
    - 11 9's of objects across multiple AZ
    - same for all storage classes
  - Availability
    - measures how readily available a service is
    - varies depending on storage class
 
<img width="449" alt="image" src="https://github.com/user-attachments/assets/14feeb78-ec29-413f-aa7d-c3da11f9763d" />
<img width="427" alt="image" src="https://github.com/user-attachments/assets/9451383b-6014-4bf6-ae53-4987d9974531" />

- S3 Encryption
<img width="426" alt="image" src="https://github.com/user-attachments/assets/90e78b3b-7a5d-405b-be33-4ee5737ed969" />

- IAM access Analyzer for S3
- Ensure that only intened peope have access to your S3 buckets
 
- Shared responsibility model for S3
<img width="416" alt="image" src="https://github.com/user-attachments/assets/a36ad4d8-419a-4900-b9dd-66bbd7999f06" />

- AWS Snowball
- Snowball Edge Storage Optimized
- Snowball Edge Compute Optimized - process data while it's being created on an edge location
  - a truck on the road, a ship on the sea, a mining station underground
  - locations may have no internet access
  - run EC2 intances or lanbda funtions at the edge

- Hybrid cloud for storage
- AWS Storage Gateway
  - bridge between on-prem data and cloud data in S3
  - hybrid storage service to allow on-pre to seamlessly use the aws cloud
  - use cases - disaster recovery, backup and restore and tiered storage
- types
  - files, vol and tapes

<img width="437" alt="image" src="https://github.com/user-attachments/assets/d1d2e16d-75b8-4413-9e95-25ffe0d3b92e" />

S3 - Summary

<img width="418" alt="image" src="https://github.com/user-attachments/assets/856e67fd-7b8b-481f-ae00-249952513cde" />

---

### Pending 9-13

### Section 9 - Database & Analytics
- SQL DB
- NoSQL DB

- benefits 

- Shared Responsibility model on AWS
- AWS
  - managed db's
    - automated backup, restore, operations, upgradaes
    - os patching
    - monitoring and alerting
- if run on EC2 then customer responsibility

- RDS - Relation DB Service
  - managed DB service
  - create db in cloud
  - monitoring dashboards
  - read replicas for improvd read performance
  - multi az setup for DR
  - scale verticall and horizontal
  - storage backed by EBS
- classic solution architecture
<img width="395" alt="image" src="https://github.com/user-attachments/assets/56788daa-7c75-4cfd-9e9a-3bdda0831f03" />

- Aurora
  - aws proprietary - no open sourced
  - supports PostgreSQL and MySQL
  - cloud optimized - 5x performance over MySQL RDS - 3x perfomance over PostgreSQL RDS
  - storage will grow automatically
  - more efficient
  - cost more
- Amazon Aurora Serverless
  - no capacity planning needed
  - pay per second
  <img width="200" alt="image" src="https://github.com/user-attachments/assets/50efc00a-ad8e-4cea-9950-27331b32d136" />

### hands on RDS

- RDS deployments
  - read replicas - up to 15 replicas - data only writen to main DB
<img width="172" alt="image" src="https://github.com/user-attachments/assets/63de8eae-01a0-48b2-b346-ec5b3750f629" />

  - Multi-AZ - for F
<img width="197" alt="image" src="https://github.com/user-attachments/assets/c3559d08-4d26-4571-8121-e3aea9c00bc5" />

  - Multi-Region
<img width="881" alt="image" src="https://github.com/user-attachments/assets/147a5b87-2415-4f48-834b-cbbd151bd436" />

- Amazon ElastiCache Overview
  - for Redis or Memcached
  - in-memory databases with high performance and low latency
  - helps reduce load off databases for read intensive workload
  - managed database - aws takes cares
<img width="824" alt="image" src="https://github.com/user-attachments/assets/c7388321-156f-4367-b336-12cc95db8d9b" />

- DynamoDB
  - fully managed
  - replication across 3 AZ
  - nosql db
  - serverless database
  - massive workloads
  - millions of request per second
  - fast and consistent performance
  - single digit millisecond latency - low latency retrievel
  - integrated with IAM for security
  - low cost and auto scaling
  - key/value database
  - 

- DynamoDB Accelerator - DAX
  - fully managed in-memory cache for Dynamodb
  - DAX just for dynamodb
  - 10x performance improvement
  - secure, ...

  - DynamoDB hands on
  - DynamoDB - Global tables
    - make a dynamodb table accessible with low latency in multiple-regions
    - active-active replication
<img width="790" alt="image" src="https://github.com/user-attachments/assets/9466f7bb-0d7c-4ef2-b951-909b8fc9e29a" />

- Redshift overview
  - based on postgreSQL
  - not used for OLTP
  - its OLAP - data warehousing
  - load every hour for example
  - 10x better performance
  - columnar storage
  - MPP - Massive parallel query exec
  - pay as you go base on the instances
  - integrated with BI
  - has sql interface for performing queries
- Redshift serverless
- without manageing infras
- pay as you go

- EMR
  - Elastic MapReduce
  - helps creating hadoop cluster (bid data) to analize and process vast amont of data
  - 100s of EC2 Instances
  - auto-scaling
  - integrated with spot instances

- Amazon Athena
  - serverless query service to perform analytics agains S3 objects
  - sql query language
  - supports csv, json,
  - $5 per TB of data scanned
  - BI / analytics / reporting, analyze and query vpc flow logs, elb logs, logs...
<img width="221" alt="image" src="https://github.com/user-attachments/assets/4d6ef198-ba09-46bf-9cbb-4c4718f97470" />

- Amazon QuickSight
  - serverless machine learning-powered business intelligence service to create interactive dashboards
  - fast, scalable, per-session pricing
  - business analytics
  - integrated with RDS, Aurora, Athena, Redshift, S3

- DocumentDB
  - for MongoDB (no sql database)
  - based on MongoDB
  - json data
  - similar "deployment concepts" as Aurora
  - fully managed, highly avail
  - replication across 3 AZ
  - millions of request per second

- Amazon Neptune
  - fully managed graph database
  - example social network
  - 3 AZ up to 15 read replicas
  - optimezed to run complex and hard queries

- Amazon Timestream
  - time-series database
  - automaticall scales up/down based on capacity need
  - 1000s faster that relational dbs
  - real-time
 
- Amazon QLDB
  - Quantum Ledger Database
  - book recording financial transactions
  - 3 AZ
  - fully managed
  - immutable system
  - cryptographically verifiable
  - central component

- Amazon Managed Blockchain
  - no need for trusted central authority
  - blockchain network
  - ethereum/fabric
  
- Aws Glue
  - ETL service
  - extract, transform and load
  - fully serverless service
  - Glue ETL
  - Glue Data Catalog - catalog of datasets
    - references, to be used by services 

- DMS
  - Database Migration Service
  - Ec2 Instance running DMS
  - souce db remains avail during migration
  - homogeneous and heterogeneous migrations

- DB Summary
<img width="553" alt="image" src="https://github.com/user-attachments/assets/964cf9bd-1ce7-4c06-9171-71518290c206" />


### Section 10 - Other Compute Services

- ECS
  - Docker
  - apps are packages
  - scale up and down very quickly
  - docker images
  - docker repositories - docker hub
  - Docker vs VMs
- ECS
  - Elastic Container Service
  - launch docker containers on AWS
  - you must provision and maintain the infras - EC2 instances
  - aws takes care of starting / stopping containers
  - integration with application load balancer

- Fargate
  - dont need to create any EC2 instances
  - serverless offering for Docker containers
  - easier to use than ECS

  - ECR - Elastic Container Registry
    - private docker registry on aws
    - store images so they can be urn by ECS or Fargate

- Amazon EKS
  - Elastic Kubernetes Service
  - containers can be hosted on EC2 and fargate
  - k8s - cloud-agnostic - any cloud
  - EKS pods

- Serverless introduction
  - new paradigm - dont have to manage servers anymore
    - Amazon S3
    - DynamoDB
    - Fargate
    - lambda - pioneer of serveless services

- Lambda
  - virtual functions - no servers to manage
  - short executions
  - scaling is automated
  - Benefits
    - pay per request and compute time
    - free tier 1MM request
    - integrated with AWS services
    - Event-driven
    - many programming languages
    - python, java, ruby
  - lambda container image
  - use case:
    - serverless thumbnail creation
    - serverless cron job
    - cloudwatch events eventbridge - trigger lambda function
  - pricing - pay per calls

- Lambda hands on

- API Gateway 
  - serverless http api
  - expose lambda use API Gateway
  - proxy the request
  - fully managed server
  - fully scalable
  - restful apis
  - support security
![image](https://github.com/user-attachments/assets/2b87b446-557c-4cd1-a5fc-cd56068700b7)

- AWS Batch
  - fully managed batch processing service
  - its a job with start and end
  - batch will dynamically launch EC2 instances or spot instances
  - submit or schedule a batch job and AWS Batch will do the rest
  - its a docker image and runs on ECS
  - scales automatically
- Batch Vs Lambda
  - Lambda: time limit, limited runtimes, serverless
  - batch: no time limit, any runtime as log as its packages as a docker images
  - rely on EBS / instances estore for disk space
    
- Amazon Lightsail
  -  virtual servers, storage, databases and networking in one place
  -  low and predictable pricing
  -  little cloud experience
  -  simpler alternative to using services
  -  use cases:
    -  web applications, based on templates
  - no auto-scaling, limited aws integrations

- Lightsale hands on

- Other compute - Summary
![image](https://github.com/user-attachments/assets/2fe907dd-1044-4a5f-bfb9-f7e96cf5477a)

![image](https://github.com/user-attachments/assets/e407e24c-58f8-49e6-aee4-c682a77b240a)

- Deploying and Managing Infrastructure at Scale Section
- CloudFormation
  - declarative way of outlining your AWS infras, for any resources
  - infras as code
  - no resources are created manually
  - cost can be estimated
  - saving strategy - scheduled delete/recreate on the flight
  - declarative programming
  - existing templates on the web
  - supports (almost) all aws resources
  - Cloudformation + Infrastructure Composer
    - to undestand your architecture diagrams
    - relations between components

  - Cloudformation Hands on
```bash
---
Resources:
  MyInstance:
    Type: AWS::EC2::Instance
    Properties:
      AvailabilityZone: us-east-1a
      ImageId: ami-0453ec754f44f9a4a
      InstanceType: t2.micro

```


```bash
---
Parameters:
  SecurityGroupDescription:
    Description: Security Group Description
    Type: String

Resources:
  MyInstance:
    Type: AWS::EC2::Instance
    Properties:
      AvailabilityZone: us-east-1a
      ImageId: ami-0453ec754f44f9a4a
      InstanceType: t2.micro
      SecurityGroups:
        - !Ref SSHSecurityGroup
        - !Ref ServerSecurityGroup

  # an elastic IP for our instance
  MyEIP:
    Type: AWS::EC2::EIP
    Properties:
      InstanceId: !Ref MyInstance

  # our EC2 security group
  SSHSecurityGroup:
    Type: AWS::EC2::SecurityGroup
    Properties:
      GroupDescription: Enable SSH access via port 22
      SecurityGroupIngress:
        - CidrIp: 0.0.0.0/0
          FromPort: 22
          IpProtocol: tcp
          ToPort: 22

  # our second EC2 security group
  ServerSecurityGroup:
    Type: AWS::EC2::SecurityGroup
    Properties:
      GroupDescription: !Ref SecurityGroupDescription
      SecurityGroupIngress:
        - IpProtocol: tcp
          FromPort: 80
          ToPort: 80
          CidrIp: 0.0.0.0/0
        - IpProtocol: tcp
          FromPort: 22
          ToPort: 22
          CidrIp: 192.168.1.1/32

Outputs:
  ElasticIP:
    Description: Elastic IP Value
    Value: !Ref MyEIP

```

  
### HERE

 
---

### Section 14 - Cloud Monitoring
- Amazon Cloudwatch metrics
  - metrics
  - have timestamps
- EC2
  - RAM not avail metric for EC2 instances
  - Default every 5 mins
  - Option for 1 min freq $$$
- EBS
  - disk read/writes
- S3 Buckets
  - bucketsizebytes, numberofobjects, allrequest
- billing metrics
- Service limits
- customs metrics

- Cloudwatch alarms - alarms are used to trigger notificatiosn for any metric
- alarms actions
  - auto scaling - increase/decrease 
  - EC2 actions -- stop, terminate, reboot
  - SNS notifications
- Alerts states
  - OK
  - INSUFFICIENT_DATA
  - ALARM

### hands on - CloudWatch
- Create alarms
- Cloudwatch logs
  - collect the logs from
    - elastic beanstalk
    - ECS
    - Lambda
    - Cloudtrail
    - Cloudwatch logs agents
    - R53
    - enabled real-time monitor of logs
    - logs retention
  - how cloudwatch logs work for
  - EC2
    - by default its disabled
    - create a cloudwatch log agents on the EC2 instance
    - we need to make sure IAM permissions are correct - role
    - works for on-prem and aws ec2
<img width="191" alt="image" src="https://github.com/user-attachments/assets/07917d36-1929-4fea-bac8-1c4cfd42bb6d" />

Video 163 - EventBridge
      
      



