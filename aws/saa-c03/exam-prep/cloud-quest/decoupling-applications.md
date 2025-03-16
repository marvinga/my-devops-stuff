### Decoupling Applications

- Amazon SQS
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
  
