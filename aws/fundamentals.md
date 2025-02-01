# AWS Fundamentals  

## AWS Infrastructure  
---


### 🏢 Region & Availability Zones  
- **Region**: A geographical area containing AWS data centers (e.g., `us-east-1`).  
- **Availability Zone (AZ)**: An isolated data center within a region for redundancy.  

### 🌐 Networking  
#### VPC (Virtual Private Cloud)  
- A logically isolated network in AWS.  
- Supports subnets, security groups, and routing.  

#### Internet Gateway  
- Allows traffic between your VPC and the internet.  
- Required for public-facing EC2 instances.  

#### Subnet  
- A segment of a VPC where resources reside.  
- **Public Subnet**: Has direct internet access.  
- **Private Subnet**: No internet access without a NAT Gateway.  

#### Security Groups  
- Act as **firewalls** controlling inbound/outbound traffic for AWS resources.  
- Rules allow or deny traffic based on **protocol, IP, and port**.  

---

## AWS Compute & Storage  

### 🖥️ EC2 (Elastic Compute Cloud)  
- Virtual machines in the cloud.  
- Supports on-demand, reserved, and spot instances.  

### 📦 S3 Bucket (Simple Storage Service)  
- Object storage for files, backups, and logs.  
- Features **versioning, encryption, and access control**.  

---

## AWS Services  

### ☁️ Managed Services  
- Fully managed AWS services that reduce operational overhead.  
- Examples:  
  - **RDS (Relational Database Service)** → Managed MySQL/PostgreSQL.  
  - **Lambda** → Serverless compute functions.  
  - **ElastiCache** → Managed Redis/Memcached.  

### 🔐 IAM (Identity & Access Management)  
- Controls access to AWS resources using **users, roles, and policies**.  
- Supports **MFA, least privilege access, and permission boundaries**.  

### 📀 AMI (Amazon Machine Image)  
- A **pre-configured EC2 instance template**.  
- Includes OS, apps, and configurations for easy deployment.  

---

Would you like me to add more details, diagrams, or examples? 🚀  



