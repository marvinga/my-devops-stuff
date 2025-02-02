# set up efs
## efs
### create a mount target for the pet client photos repository
- deploy and maintain a fs infrastructure that is accessible from three different servers

### *review notes:*
 - highly scalable
 - massively paraller shared access
 - low latency
 - regional service
 - multi az's
 - without provisioning or managing servers
 - automatically grows/shrinks as files are added/removed
 - standard storage class / infrequent access storage class
 - general purpose / max i/o
 - busrting and provisioned
 - encryption rest/transit -> aws kms
 - nfsv4 protocol - nfs clients

<img width="458" alt="image" src="https://github.com/user-attachments/assets/18160d1e-ad6f-4be3-9d2d-e1ab769797f2" />

## *-> launch and config efs*
## *-> mount the fs to ec2*
## *-> connect a second ec2 to the same fs*
## *-> share files between the ec2's*


```bash
sudo -i sudo yum install -y amazon-efs-utils
sudo mount -t efs -o tls fs-0cffb814fb770d671:/ efs
