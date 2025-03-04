### AWS SimuLearn: Highly Available Web Applications

| **Objectives** | **Description** | **Steps** | **AWS Service** | **Comments** |
|----------------|-----------------|-----------|-----------------|--------------|
| **Identify the principles for architecting highly available applications.** | Increase website reliability by creating a highly available architecture that spans multiple Availability Zones with load balancing and health monitoring. | 1. Use AWS to create an **Auto Scaling group** across multiple Availability Zones, ensuring that your resources aren't isolated. | **Amazon EC2, Auto Scaling** |  |
| **Determine the benefits of using an Application Load Balancer.** | Help the travel agency create a highly available web application architecture. | 2. Create an **Application Load Balancer (ALB)** so that network traffic is distributed equally across your EC2 instances. | **Elastic Load Balancing (ALB)** |  |
| **Demonstrate how to use Auto Scaling groups with Elastic Load Balancing and health monitoring.** | Integrate Auto Scaling and ALB to dynamically adjust resources based on traffic and maintain uptime. | 3. Spread your **EC2 instances** over multiple Availability Zones, then attach an **ALB** to your **Auto Scaling group** to ensure high availability and elasticity. | **Amazon EC2, Auto Scaling, Elastic Load Balancing (ALB)** |  |
| **Monitor EC2 instance health with health checks.** | Continuously monitor the health of your EC2 instances and ensure that traffic is routed to healthy instances. | 4. Set up **health checks** on your **ALB** to monitor EC2 instances and ensure traffic is only directed to healthy instances. | **Elastic Load Balancing (ALB), Amazon CloudWatch** |  |
 
---

<img width="1165" alt="image" src="https://github.com/user-attachments/assets/db812c8a-ff98-4d25-b42d-4d5a0d3ea4c7" />

---

| **Step** | **Description** |
|----------|-----------------|
| **Step 1** | This classic web application solution uses an AWS Cloud computing infrastructure to ensure that an application is highly available. |
| **Step 2** | Amazon **Route 53** provides DNS services to streamline domain management. |
| **Step 3** | **Amazon CloudFront** is used to deliver static and dynamic content. It can cache frequently accessed content to decrease latency. |
| **Step 4** | **Amazon Simple Storage Service (Amazon S3)** is used to store static assets, such as images and videos. |
| **Step 5** | **Elastic Load Balancing** is used to distribute traffic across multiple Availability Zones. An **Amazon EC2 Auto Scaling** group is configured to horizontally scale based on customer demand. |
| **Step 6** | **AWS Auto Scaling** launches or terminates EC2 instances based on the scaling policies that are defined. |
| **Step 7** | EC2 **Auto Scaling groups** integrate with **Amazon CloudWatch** for metrics data and with **Elastic Load Balancing** to add and remove hosts for load distribution. |
| **Step 8** | For example, if a web server reports greater than 80 percent CPU utilization over a period of time, an additional web server is launched and automatically added to the load balancer. |




