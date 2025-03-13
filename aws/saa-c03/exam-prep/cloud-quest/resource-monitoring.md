#### Resource Monitoring

#### Build a central monitoring dashboard that immeditately and automatically notifes engineers of a system failure

- Cloudwatch overview
  - in the form of metrics, logs and events
  - integrates with 70+ aws services
  - hybrid using cloudwatch agents
  - is basically a metrics repository
    
![image](https://github.com/user-attachments/assets/09ccc8cf-8659-41df-9b0f-d211596c7ef0)

- by default, ec2 publishes a set of metrics related to your instance to cloudwatch. cpu, networkin/out metrics.
- create alarms watch metrics and send notificatios or automatically make changes to the resources you are monitoring when a threshold you specify is crossed.
- alarms can perform 1 or more actions based on its configuration: eg: sending a notif to an SNS topic and performing EC2 action
- by default 5 mins periods

![image](https://github.com/user-attachments/assets/cd242595-4460-44db-b202-2581c1a9ed76)

---

#### Concept
- investigate default monitoring of EC2 instances
- create an amazon cloud watch dashboard and add a widget
- create a cloudwatch alarm for cpu
- create a cloudwatch action to send an email notification by using amazon SNS

---

- a *namespace* is a container for cloudwatch metrics.
- metrics in different namespaces are isolated from each other, so that metrics from different applications are not mistakenly aggregated into the same statistics.
- amazon sns is a manage services that provides message delivery from publishers to subscribers (aka producers and consumers)
- a state of INSUFFICIENT_DATA means that an alarm has just started, the metric is not avail yet.

