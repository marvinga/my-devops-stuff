### AWS SimuLearn: Highly Available Web Applications
https://explore.skillbuilder.aws/learn/courses/20072/aws-simulearn-highly-available-web-applications/lessons/144813/start-aws-simulearn


> practice lab goals
>> - configure an auto scaling group to use an application load balancer
>> - configure load balancer health checks for the auto scaling group
>> - add a second availability zone to the auto scaling group

---

#### EC2
  - Auto Scaling Groups
  ```
  update from 1 az and 1 subnet

  4)
  
  
  ```
  - Application Load Balancer
  ```
  1)
  add a ALB to the auto scaling group
  add 2 more az using public subnet
  add a new target group to the application load balancer

 3)
 edit the health checks of the target groups
 ajust threshold accourdingly
 
  

  
  
  ```
  - Security Groups
  ```
  2)
  add new security group - to allow access to the travel agency load balancer from the internet.
  add inbound rules and outbound rules
  edit exiting security group to allow http inbound from app load balancer security group
  
  

  ```

---

<img width="1165" alt="image" src="https://github.com/user-attachments/assets/db812c8a-ff98-4d25-b42d-4d5a0d3ea4c7" />

---








