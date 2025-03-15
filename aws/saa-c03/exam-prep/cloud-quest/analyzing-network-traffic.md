### Analyzing Network Traffic

#### # VPC flow logs to capture the traffic request going in and out of your vpc

- solution request
  - detect and deny network traffic from a specific IP address to increase security

```
this solution uses ACLs and security groups to filter network traffic. it uses VPC flow logs to analyze the traffic
```

- a nacl allows or denies specific inbound or outbound traffic at the subnet level
  - it provides an optional layer of security for your vpc
  - stateless
  - eval in order
  - acts as a firewall, controlling traffic in and out of one or more subnets
  - by default your VPC comes with a modifiable network ACL.
  - by default allows all inbound/outbound traffic

- security groups - virtual firewall at the instance level to control inbound and outbound traffic
  - default denies all inbound allows all outbound traffic
  - define allow rules
  - no denie rules required
  - statefull
  - all rules are avaluated
  - type, protocol

