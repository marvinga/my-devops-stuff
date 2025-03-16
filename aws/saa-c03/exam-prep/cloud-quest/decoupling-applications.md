### Decoupling Applications

- Amazon SQS -> A2A and A2P
- Amazon SNS

```
decoupling an application involves desingning moduler, independent components called microservices
microservices communicate with each other through well-defined APIs to increase flexibility and scalability

```

#### Solution Request
- improve avail and fault tolerance by decoupling microservices with messages sent to amazon SQS and Amazon SNS topics

![image](https://github.com/user-attachments/assets/8274a4b4-e181-4fca-aa0e-b3ce6463973b)

---

#### Practice lab goals
- create an amazon SNS topic
- create an amazon SQS queue
- Subscribe the SQS queue to the SNS topic
  
arn:aws:sns:us-east-1:117126996917:ImageNotification

https://sqs.us-east-1.amazonaws.com/117126996917/ImageQueue

44.197.175.178

