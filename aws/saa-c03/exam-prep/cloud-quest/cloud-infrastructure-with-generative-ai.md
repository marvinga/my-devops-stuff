### cloud-infrastructure-with-generative-ai

- aws cloud development kit
- CDK -
  - supports many programming languages
  - construct into staks forming a CDK application
  - easier cloud onboarding
  - customizable and shareable
  - 
- Amazon Q Developer - AI-powered productivity tooll that helps you generate code suggestions
  - transforming your workload
  

### Solution Request
- Speed up and automate the deployment and managemnt of cloud infrastructure by using aws CDK and Amazon Q

---

![image](https://github.com/user-attachments/assets/5d22506d-b2a7-493e-b196-3426f66f1242)

---

### Practice lab goals
- create various aws resouces by using the aws cdk and amazon q
- deploy an application by using aws cdk and amazon Q
- test the application by using an application load balancer

- Amazon Sagemaker AI - fully managed service to prepare data and build, train, andn deploy ML models for any used case with fully managed infrastrucure, tools, and workflows.
- Code Editor - based on code-OSS, visual studio code-open source
- 


s3://lab-bucket-411706215270-104/userdata.sh


# create a t3.small ec2 instance for the web server in a private gress subnet and vpc.availability_zones[1] 


```python
from aws_cdk import (
    Duration,
    Stack,
    SecretValue,
    aws_ec2 as ec2,
    aws_rds as rds,
    aws_iam as iam,
    aws_elasticloadbalancingv2 as elbv2,
)
from constructs import Construct

class CdkappStack(Stack):

    def __init__(self, scope: Construct, construct_id: str, **kwargs) -> None:
        super().__init__(scope, construct_id, **kwargs)

        # create a vpc with IpAddresses 10.10.0.0/16, a NAT gateway, a public subnet, PRIVATE_WITH_EGRESS subnet and a RDS subnet
        vpc = ec2.Vpc(
            self,
            "VPC",
            ip_addresses=ec2.IpAddresses.cidr("10.10.0.0/16"),
            nat_gateways=1,
            max_azs=3,
            subnet_configuration=[
                ec2.SubnetConfiguration(
                    subnet_type=ec2.SubnetType.PUBLIC,
                    name="Public",
                    cidr_mask=24,
                ),
                ec2.SubnetConfiguration(
                    subnet_type=ec2.SubnetType.PRIVATE_WITH_EGRESS,
                    name="PrivateWithEgress",
                    cidr_mask=24,
                ),
                ec2.SubnetConfiguration(
                    subnet_type=ec2.SubnetType.PRIVATE_ISOLATED,
                    name="RDS",
                    cidr_mask=24,
                ),
            ],
        )

        # create a security group for the load balancer
        alb_sg = ec2.SecurityGroup(
            self,
            "ALBSecurityGroup",
            vpc=vpc,
            allow_all_outbound=True,
            description="Security group for the load balancer",
        )

        # create a security group for the RDS instance
        rds_sg = ec2.SecurityGroup(
            self,
            "RDSSecurityGroup",
            vpc=vpc,
            allow_all_outbound=True,
            description="Security group for the RDS instance",
        )

        # create a security group for the EC2 instance
        ec2_sg = ec2.SecurityGroup(
            self,
            "EC2SecurityGroup",
            vpc=vpc,
            allow_all_outbound=True,
            description="Security group for the EC2 instance",
        )

        # add ingress rules for the load balancer security group to allow all traffic on port 80
        alb_sg.add_ingress_rule(
            peer=ec2.Peer.any_ipv4(),
            connection=ec2.Port.tcp(80),
            description="Allow HTTP traffic",
        )

        # add ingress rule for the EC2 instance security group to allow 8443 traffic from the load balancer
        ec2_sg.add_ingress_rule(
            peer=ec2.Peer.security_group_id(alb_sg.security_group_id),
            connection=ec2.Port.tcp(8443),
            description="Allow HTTPS traffic",
        )

        # add ingress rule to RDS security group to allow 3306 traffic from EC2 security group
        rds_sg.add_ingress_rule(
            peer=ec2.Peer.security_group_id(ec2_sg.security_group_id),
            connection=ec2.Port.tcp(3306),
            description="Allow MySQL traffic",
        )

        # add ingress rule for the RDS security group to allow 22 from the EC2 instance
        rds_sg.add_ingress_rule(
            peer=ec2.Peer.security_group_id(ec2_sg.security_group_id),
            connection=ec2.Port.tcp(22),
            description="Allow SSH traffic",
        )

        # create an rds aurora mysql cluster
        cluster = rds.DatabaseCluster(self, "MyDatabase",
            engine = rds.DatabaseClusterEngine.aurora_mysql(version = rds.AuroraMysqlEngineVersion.VER_3_04_0),
            # credentials using testuser and password1234!
            credentials = rds.Credentials.from_password("testuser", SecretValue.unsafe_plain_text("password1234!")),
            # add default database name Population
            default_database_name = "Population",
            instance_props={
                "vpc": vpc,
                "security_groups": [rds_sg],
                "vpc_subnets": ec2.SubnetSelection(subnet_type = ec2.SubnetType.PRIVATE_ISOLATED)
            },
            instances = 1
            )

        # define an Amazon Linux 2023 image
        amzn_linux = ec2.MachineImage.latest_amazon_linux(
            generation=ec2.AmazonLinuxGeneration.AMAZON_LINUX_2023
        )

        # read userdata file from cdkapp directory using readlines
        with open("cdkapp/userdata.sh", "r") as f:
            user_data = f.readlines()

        # Add each line from the script to ec2 UserData
        ec2_user_data = ec2.UserData.for_linux()
        for line in user_data:
            ec2_user_data.add_commands(line.strip())

        # create a t3.small ec2 instance for the web server in a private egress subnet and vpc.availability_zones[0]
        ec2_instance = ec2.Instance(self, "MyInstance",
            instance_type = ec2.InstanceType("t3.small"),
            machine_image = amzn_linux,
            vpc = vpc,
            vpc_subnets = ec2.SubnetSelection(subnet_type = ec2.SubnetType.PRIVATE_WITH_EGRESS),
            availability_zone = vpc.availability_zones[0],
            user_data = ec2_user_data,
            security_group = ec2_sg,
            role = iam.Role.from_role_name(self, "ec2_instance_role", "ec2_instance_role")
        )

        # create a t3.small ec2 instance for the web server in a private gress subnet and vpc.availability_zones[1] 
        ec2_instance2 = ec2.Instance(self, "MyInstance2",
            instance_type = ec2.InstanceType("t3.small"),
            machine_image = amzn_linux,
            vpc = vpc,
            vpc_subnets = ec2.SubnetSelection(subnet_type = ec2.SubnetType.PRIVATE_WITH_EGRESS),
            availability_zone = vpc.availability_zones[1],
            user_data = ec2_user_data,
            security_group = ec2_sg,
            role = iam.Role.from_role_name(self, "ec2_instance_role2", "ec2_instance_role")
        )


        # add depends on for the ec2 instance to wait for the RDS instance
        ec2_instance.node.add_dependency(cluster)

        # create a load balancer in the public subnet
        lb = elbv2.ApplicationLoadBalancer(self, "MyLoadBalancer",
            vpc=vpc,
            internet_facing=True,
            security_group=alb_sg,
            vpc_subnets=ec2.SubnetSelection(subnet_type=ec2.SubnetType.PUBLIC),
        )

        # add a listener on port 80 to the load balancer with open=True
        listener = lb.add_listener("Listener", port=80, open=True)

        # add targets to the load balancer using port 80
        listener.add_targets("ApplicationFleet",
            port=80,
        )

        # add depends on for the listener to wait for the ec2 instance
        listener.node.add_dependency(ec2_instance)
        


```
