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
## *3. aws access management capabilities*
- what is an aws account? - is where you provision your services, its also where - no permissions by default
  - what is principle of least privilege?
  - iam features
    - users
    - groups
    - roles - temp credentials
      - a aws sevises/user/program gain temp access to api calls
      - aws congnito identity pool - for guess users who do not require authentication provide temp authentition - user directory
    - policies
      - managed - aws creates
      - unmanaged
      - policy simulator - test and troubleshoot iam and resource base policy
      - integration with other aws services
      - access policies - to grant permissions to your aws resources - json based
        - bucket policy - and objects in the bucket
        - user policy
        - mfa detele on your s3 bucket - extra layer protection
        - enable versioning first
    - federated
    - system manager
    - cross-account iam roles

here--->components and resources for security
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
    
