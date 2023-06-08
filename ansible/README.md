# Ansible

# -> install ansible for rhel

- sudo yum update -y
- sudo yum install -y epel-release
- sudo yum repolist
- sudo yum install -y python3
- sudo alternatives --set python /usr/bin/python3
- sudo yum install -y ansible ansible-doc

# -> ad-hoc commands

Some basic Git commands are:
```
ansible [pattern]   -m [module] -a "[module options]"
ansible webservers  -m shell    -a 'echo $DISPLAY'
ansible webservers              -a "/sbin/reboot"
ansible webservers              -a "/sbin/reboot" -f 10
ansible webservers              -a "/sbin/reboot" -u user1
ansible webservers              -a "/sbin/reboot" -u user1 --become
ansible webservers              -a "/sbin/reboot" -u user1 -b -K ansible webservers -m copy      -a "src=/etc/hosts dest=./hosts"
ansible webservers -m file      -a "dest=/home/db.txt mode=600"
```




# -> track

6/8/2023
- Decided to finish linkedin just viewing the videos and do labs only from book
- need to sync few things from labtop - done
- Install git hub desktop for on mac - done