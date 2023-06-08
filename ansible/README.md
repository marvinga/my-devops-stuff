# Ansible

## install ansible

### red hat
```
sudo yum update -y
sudo yum install -y epel-release
sudo yum repolist
sudo yum install -y python3
sudo alternatives --set python /usr/bin/python3
sudo yum install -y ansible ansible-doc
```

### ad-hoc commands

```
ansible [pattern]   -m [module] -a "[module options]"
ansible webservers  -m shell    -a 'echo $DISPLAY'
ansible webservers              -a "/sbin/reboot"
ansible webservers              -a "/sbin/reboot" -f 10
ansible webservers              -a "/sbin/reboot" -u user1
ansible webservers              -a "/sbin/reboot" -u user1 --become
ansible webservers              -a "/sbin/reboot" -u user1 -b -K ansible webservers -m copy -a "src=/etc/hosts dest=./hosts"
ansible webservers -m file      -a "dest=/home/db.txt mode=600"
```
### modules
### https://docs.ansible.com/ansible/2.9/modules/modules_by_category.html

```
                   -m yum
                   -m user
                   -m service
```

#### file
```
ansible AppServers -m file -a "state=touch path=/home/vagrant/file1.txt mode=700"
ansible AppServers -m file -a "state=touch path=/home/vagrant/file1.txt mode=700"
ansible AppServers -m file -a "state=touch path=/home/vagrant/file1.txt mode=700"
ansible AppServers -m file -a "dest=/home/vagrant/file3.txt mode=600"
ansible AppServers -m file -a "dest=/home/vagrant/file3.txt mode=600 ower=root group=root" -b -K
ansible AppServers -m file -a "dest=/home/vagrant/dir1 mode=755 state=directory state=absent"
```

### ansible-inventory
```
ansible-inventory --list
ansible-inventory --list --output inventory.json
ansible-inventory --graph
ansible-inventory --list -y
```

### ansible-doc
```
ansible-doc -t cache -l 
            become
            callback
            cliconf
            connection
            httpapi
            inventory
            lookup
            netconf
            shell
            strategy
            vars

ansible-doc file
ansible-doc file -s file 
```

### ansible-config: 

```
ansible-config list
ansible-config dump
ansible-config dump --only-changed
ansible-config view
```

```
$ANSIBLE_CONFIG
./ansible.cfg
/etc/ansible/ansible.cfg 
```

### ansible-console
```
ansible-console -b -K
    shell date
    yum name=gedit-plugins state=installed
```

### ansible-playbook
```
ansible-playbook --syntax-check apache.yml
ansible-playbook apache.yml -b -K
ansible-playbook --check apache.yml
ansible-playbook deploy_web.yml -i staging -i production
```


# Track

6/8/2023
- Decided to finish linkedin just viewing the videos and do labs only from book
- need to sync few things from labtop - done
- Install git hub desktop for on mac - done