### Deep Dive with Security: AWS IAM (Includes Labs)	

- https://explore.skillbuilder.aws/learn/course/external/view/elearning/7647/deep-dive-with-security-aws-identity-and-access-management-iam-includes-labs

![image](https://github.com/user-attachments/assets/b4cd1503-3730-4136-8d3d-963fd33b6f39)

![image](https://github.com/user-attachments/assets/367c7599-4351-473d-8abe-d678d52b554c)


--- 

https://explore.skillbuilder.aws/learn/courses/7647/deep-dive-with-security-aws-identity-and-access-management-iam-includes-labs/lessons/68341/deep-dive-with-security-aws-identity-and-access-management-iam

### IAM
- iam request context:
  - what is a policy
  - how a policy actually works
  - think of the principal, action and resource as the subject, verb and object of a sentence
    - *principal* - user/role/application that sent the request
    - *action* - what the principal is attempting to do
    - *resource* - objects upon which the actions or operations are performed

- identity-based policies
  - object in aws that when assotiated with an IAM identity, defines their permissions.
  - permissions in the policy determines wheather the request is allowed or denied
  - most policies are stored in aws as json documents

  - types:
    - aws managed - aws managed and creates these types of policies
    - customer managed - policies that customer creates and manage in their aws account. provides more precise control than aws managed policies - 
    - inline - embedded directly into a single user/group/role. aws doesnt recommend using inline policies - to maintain a strict one-to-one relationship between a policy and theh pricipal entity


  - IAM policy:
    - sid is optional - brief desc
    - effect - allow/denied
    - action - desc the type of access that would be allow or denied
    - resource - specifies the opbject or objects that the policy statement covers
    - conditions - optional - expressions in which you can use operations, =, lt, gt, etc.
---
![image](https://github.com/user-attachments/assets/5228549b-6993-4a77-b103-0a934b2fdd97)

---

- Policy evaluation overview
  - policy types
    - identity-based
    - resource-based
    - permissions boundaries
    - aws organization SCPS
    - ACLs
    - Session policies

> Note that within an account, you need a service control policy AND an IAM policy OR a resource-based policy. Across accounts, you need a service control policy AND an IAM policy AND a resource-based policy.
  
--- 

- explicit and implicit denies
  - 
