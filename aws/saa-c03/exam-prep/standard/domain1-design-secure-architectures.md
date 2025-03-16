# Design Secure Architectures

### Outline
- 1.1 Design secure access to AWS resources
- 1.2 Design secure workload and applications
- 1.3 Determine appropriate data security controls

  
# 1.1 Design secure access to AWS resources

- undestanding fundamentals
  - *aws accounts*
  - IAM
  - mfa
  - account root user
  - user, groups and roles
  - secure credentials
  - AWS Security tocken services
  - federation access
  - read and interpret policy documents
  - 

### Services
- IAM
- AWS Cloudtrail
- AWS Control tower
- AWS organizations
- AWS Control Policies


---

#### walkthough question

- 1. b & d

---

# 1.2 Design secure workload and applications

- networking fundamentals
- vpc architectures
- nacl
- subnets
- again: ensure you know the fundamentals

### Services
- AWS Privatelink - adding secure access for other vpc in other aws accounts.
- AWS vpc peering
- Transit Gateways
- VPN Connections
- Direct Connect
- AWS site-to-site vpn's

- what is an enpoint service:
  - they are gateway objects we can create inside our vpc similar to internet gateway or a nat gateway, to connect to aws public services w/o the need of a gateway like the internet gateway
    

- Other services:
  - Amazon Guarduty
  - Amazon Macie
  - AWS Secrets Manager
  - Amazon Cognito
  - AWS Shield 

#### walkthough question

- 1. security groups
