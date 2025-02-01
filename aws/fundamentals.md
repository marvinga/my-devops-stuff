
# AWS Fundamentals

## Introduction  
Amazon Web Services (AWS) is a cloud computing platform offering **on-demand services** like compute, storage, and networking.

## Core AWS Services  

### ☁️ Compute  
- **EC2 (Elastic Compute Cloud)** – Virtual servers in the cloud.  
- **Lambda** – Serverless functions without managing infrastructure.  

### 📦 Storage  
- **S3 (Simple Storage Service)** – Object storage for files and backups.  
- **EBS (Elastic Block Store)** – Persistent storage for EC2.  

### 🛜 Networking  
- **VPC (Virtual Private Cloud)** – Isolated cloud network.  
- **Route 53** – Domain Name System (DNS) service.  

## 🔹 Key Concepts  
### 1️⃣ AWS Regions & Availability Zones  
- **Regions**: Global AWS data centers (e.g., `us-east-1`, `eu-west-1`).  
- **AZs**: Multiple **isolated** locations within a region for redundancy.  

### 2️⃣ IAM (Identity & Access Management)  
- **Users, Roles, and Policies** control access to AWS resources.  
- Example of an IAM policy:
```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "s3:ListBucket",
      "Resource": "arn:aws:s3:::example-bucket"
    }
  ]
}
