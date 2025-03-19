### AWS Command Line Interface (CLI)	

aws-command-line-interface-cli.md

- allows automation through scripts
- I already have this installed for mac and windows

```
aws --version
aws configure
```

```
aws ec2 describe-instances
```

```
aws ec2 describe-instances --output table
-------------------
|DescribeInstances|
+-----------------+
```

```
aws ec2 describe-instances --query 'Reservations[].Instances[].InstanceId'
aws ec2 describe-instances --query 'Reservations[].Instances[].Placement.AvailabiltyZone'
```






