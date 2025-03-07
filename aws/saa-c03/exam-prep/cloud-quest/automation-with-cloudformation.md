### Cloudd formation

*any service that is defined in AWS uses API calls, and a CloudFormation stack can handled it*

#### Learning objectives
- create a template for an EC2 instance and security group
- create a template for an S3 bucket
- run the template to create a new stack kof resources

#### Solution request
> create an aws cloudformation stak from sample code.
> after the stack is created used it to deploy specified resources

> aws cloudformation helps you model a collection of resouces, provision them quicktly and consistently and manage them throutht their lifecycles by treating infrastructure as code
- > json files
- > templates, blueprints
- > version controling the changes
- > automate and deploy

--- 
- this solution uses cloud formation to create resources, called stacks
- the definitions for the resources to be created are listed in a file, called a cloudformation template
- the templated for this solution defines 2 name aws resources: ec2 and s3 bucket
- cloudformation automatically rolls back changes if errors are encountered
- aws cloudformation cli
- model, provition andn manage your infrastructure
- aws cloudformation designer
  
<img width="970" alt="image" src="https://github.com/user-attachments/assets/845c6d79-da99-415f-947f-a2b5dd9b3dd0" />

```
#### Step 1 #######

Resources:
  RobotAppServer:
    Type: 'AWS::EC2::Instance'
    Properties:
      InstanceType: t2.micro
      ImageId: ami-087c17d1fe0178315

###################

#### Step 2 #######

  RobotAppSecurityGroup:
    Type: 'AWS::EC2::SecurityGroup'
    Properties:
      GroupDescription: Enable SSH access via port 22
      SecurityGroupIngress:
      - IpProtocol: tcp
        FromPort: '22'
        ToPort: '22'
        CidrIp: 0.0.0.0/0

###################

#### Step 3 #######

      SecurityGroups:
      - !Ref RobotAppSecurityGroup

###################

#### Step 4 #######

  RobotS3Bucket:
    Type: 'AWS::S3::Bucket'
    DeletionPolicy: Delete

###################

##FULL STACK CODE##

Resources:
  RobotAppServer:
    Type: 'AWS::EC2::Instance'
    Properties:
      InstanceType: t2.micro
      ImageId: ami-087c17d1fe0178315
      SecurityGroups:
      - !Ref RobotAppSecurityGroup
  RobotAppSecurityGroup:
    Type: 'AWS::EC2::SecurityGroup'
    Properties:
      GroupDescription: Enable SSH access via port 22
      SecurityGroupIngress:
      - IpProtocol: tcp
        FromPort: '22'
        ToPort: '22'
        CidrIp: 0.0.0.0/0
  RobotS3Bucket:
    Type: 'AWS::S3::Bucket'
    DeletionPolicy: Delete
```
---
- https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html
- 

