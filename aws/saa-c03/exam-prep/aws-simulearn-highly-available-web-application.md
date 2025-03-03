### AWS SimuLearn: Highly Available Web Applications

- Objectives
  - Identify the principles for architecting highly available applications.
  - Determine the benefits of using an Application Load Balancer.
  - Demonstrate how to use Auto Scaling groups with Elastic Load Balancing and health monitoring.

#### Highly Available Web Applications
  - Description: Increase website reliability by creating a highly available architecture that spans multiple Availability Zones with load balancing and health monitoring.
  - Help the travel agency create a highly available web application architecture.

- Overview steps
  - First, you can use AWS to create an Auto Scaling group across multiple Availability Zones, ensuring that your resources aren't isolated.
  - Second, you can create a load balancer so that network traffic is distributed equally across your servers.
  - After you spread your EC2 instances over multiple Availability Zones, you can attach an load balancer to your Auto Scaling group to ensure high availability and elasticity.
  - You can also monitor EC2 instance health by setting up a health check on your load balancer.
 
<img width="1165" alt="image" src="https://github.com/user-attachments/assets/db812c8a-ff98-4d25-b42d-4d5a0d3ea4c7" />
 
  
- Step 1: This classic web application solution uses an AWS Cloud computing infrastructure to ensure that an application is highly available.
- Step 2: Amazon Route 53 provides DNS services to streamline domain management.
- Step 3: Amazon CloudFront is used to deliver static and dynamic content. CloudFront can cache frequently accessed content to decrease latency.
- Step 4: Amazon Simple Storage Service (Amazon S3) is used to store static assets, such as images and video.
- Step 5: Elastic Load Balancing is used to distribute traffic across multiple Availability Zones. An Amazon EC2 Auto Scaling group is configured to horizontally scale based on customer demand.
- Step 6: AWS Auto Scaling launches or terminates EC2 instances based on the scaling policies that are defined.
- Step 7: EC2 Auto scaling groups integrates with Amazon CloudWatch, for metrics data, and with Elastic Load Balancing to add and remove hosts for load distribution.
- Step 8: For example, if a web server reports greater than 80 percent CPU utilization over a period of time, an additional web server is launched and automatically added to the load balancer.

#### Practice step by step done. 
- I'll need to do again few times before the DIY
