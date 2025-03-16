### Container Services

- Amazon ECS - elastic container services - fully managed
- Amazon ECR - elastic container registry
- AWS Fargate - run containers withouht having to manage servers or cluster of ec2 instances
  - quick way to launch and run containers on AWS. 
- Amazon ECS Cluster - is a logical grouping of tasks or services running on EC2 instances.
- a task is the instantiation of a task definition withing a cluster. 

#### Solution request
- user amazon ec2, amazon ecr and aws fargate to deploy containerized applications

---

![image](https://github.com/user-attachments/assets/e93e12ee-5630-42ca-bf47-72d1b58134ce)


```
- scalability and ci/cd integration
- save on compute cost
- seamless aws integration

- key components:
- taks definition - json format
  - image
  - ports
  - data volumes
```
---

### Practice labs goals
- create a docker image for an applicatin
- create an amazon ECR repository, and then push the docker image to it
- deploy an application with ECS and Fargate by using an image from ECR
  

```
aws ecr create-repository --repository-name "${repo_name}
```


397797572166.dkr.ecr.us-east-1.amazonaws.com/my_app:latest
397797572166.dkr.ecr.us-east-1.amazonaws.com/my_second_app:latest

vpc-0e1144209ddbf8969


