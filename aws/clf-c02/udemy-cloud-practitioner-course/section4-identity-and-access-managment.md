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
