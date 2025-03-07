### Backing up data

  #### RTO - recovery time objective - maximum acceptable delay between the interruption of service and its restorateion
  #### RPO - recovery point objective - isi the maximun acceptable amount of time since the last data revovery point
  #### this determines what is considered an acceptable loss of data

- aws backup

#### Learning objectives
- crete a bakup plan for amazon EBS volumes using tags
- create an automated backup plan

#### Solution request
- use aws backcup to centralize and automate data protection across aws services
---

- each backup vault must have an aws key management services encryption key - which encryipts the backup placed in a backup vault

![image](https://github.com/user-attachments/assets/85c20b71-b9c5-4688-ba2a-1c41ab302a44)



- practice lab goals
  - create a custom backup vault
  - configure an on-demand of amazon ebs volumes with a resouce id
  - create automated backup plans for amazon ec2 attahced amazon ebs volumes using tags
  - 
