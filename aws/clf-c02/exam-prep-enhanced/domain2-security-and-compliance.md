# domain 2 - 30%
## *1. security and compliance*
- aws shared responsibility model
  - responsibilites depending on service used
    - rds
    - lambda
    - ec2
## *2. cloud security, governance, and compliance*
  - aws compliance - helps you understand the controls in place at aws to maintain security and data protection in aws along with arrusange programs that provides templates and control mappings to help constomers stablish the compliance in aws/
  - where to find compliance information - aws compliance programs
    - ex how do you now dynamodb is gdpr compliante? where can you find this information: --> aws artifact
    - protect systems and informations 
    - how customers secure resources on aws
  - security tools
    - inspector
    - security hub
    - guardduty - threat detection sevice to monitor for malisious activities and unauthorized behavior
    - waf - help protect applications from common exploits that could impact application avail, compromise your security or consume exesive resources - 
    - shield - protect from ddos attacks
- encryption
  - in transit
  - at rest
  - who enables the encryption for different aws services (srm)
- services for governance and compliance
  - compliance
  - artifact
  - cloudwatch - monitoring and collecting operational data
  - cloudtrail - log events related to resource creation and management - accounts activites - multiregion
  - audit manager
  - aws config - take inventory of current configuration and audit resources to ensure they maintain correct configurations
- compliance vary among aws services

aws access management
- **access keys, password policies & credential storage**
  - secrets manager
  - system manager
- **authentication methods**
  - mfa
  - iam
  - cross-account iam roles
- **groups, users, custom polices and managed polices -> least privilege**
- **taks only root can perform**
- **root user protection methods**
- **identitly management types**
  - federated

components and resources for security
- **security feature & services**
  - security groups
  - network acls, aws waf
- **3rd party security products in aws market place**
- **where security info is**
  - knowledge center
  - security center
  - security blog
- **idenfitying security issues**
  - trusted advisor
    
