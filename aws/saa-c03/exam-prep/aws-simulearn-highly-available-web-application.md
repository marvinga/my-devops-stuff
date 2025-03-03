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
  


