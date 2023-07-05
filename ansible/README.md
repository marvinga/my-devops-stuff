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

ansible all --list-hosts
ansible -m ping 192.168.33.101
ansible -a "uptime" all
ansible -a "uptime" 192.168.33.101


ansible -m ping 'all:!web1'-i hosts
ansible -m ping 'web:&ha'  -i hosts
ansible -m ping 'web[0]'   -i hosts
ansible -m ping 'web[2]'   -i hosts
ansible -m ping 'web[0:2]' -i hosts
ansible -m ping 'web[1:]'  -i hosts

ansible -m ping ip_address

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

#### copy
```
ansible AppServers -m copy -a "dest=/home/vagrant/file3.txt content='other_stuff' force=no mode=700"
```

#### yum
```
ansible AppServers -m yum -a "name=httpd state=installed" -b -K
ansible AppServers -m yum -a "name=httpd state=present" -b -K
ansible AppServers -m yum -a "name=httpd state=removed" -b -K
                   -m yum -a "name=* state=latest" -b -K #--> yum update -y
                   -m yum -a "name='@Development tools' state=installed" -b -K #--> yum group install
                   -m yum -a "list=installed" -b -K #--> yum list installed


sudo firewall-cmd --add-port=80/tcp

```

#### service
```
ansible AppServers -m service -a "name=httpd"
ansible AppServers -m service -a "name=httpd state=started"      -b -K
ansible AppServers -m service -a "name=httpd state=restarted"    -b -K
ansible AppServers -m service -a "name=httpd state=reloaded"     -b -K
ansible AppServers -m service -a "name=httpd state=stopped"      -b -K
ansible AppServers -m service -a "name=httpd enabled=yes"        -b -K
ansible AppServers -m service -a "name=httpd disenabled=yes"     -b -K
ansible AppServers -m service -a "name=httpd enabled=yes"  --check
ansible AppServers -m service -a "name=httpd enabled=no"   --check
```

#### user
```
ansible AppServers -m user    -a 'name=marvin state=present home=/home/marvin shell=/bin/bash' -b -K
ansible AppServers -m user    -a 'name=marvin group=wheel' -b -K
ansible AppServers -m user    -a 'name=marvin groups=marvin group=wheel' -b -K
ansible AppServers -m user    -a 'name=marvin state=absent' -b -K
doveadm pw -s SHA512-CRYPT
```

#### setup 
```
ansible AppServers -m setup 
ansible AppServers -m setup    -a 'gather_subset=network'
ansible AppServers -m setup    -a 'gather_subset=network,hardware'
ansible AppServers -m setup    -a 'gather_subset=network,!hardware'
ansible AppServers -m setup    -a 'gather_subset=!all'
ansible AppServers -m setup    -a 'gather_subset=!all,!min'
ansible AppServers -m setup    -a 'gather_subset=!all,!min,hardware'
ansible AppServers -m setup    -a 'gather_subset=!all,!min,hardware filter=ansible_system'
ansible AppServers -m setup    -a 'gather_subset=!all,!min,hardware filter=ansible_python_version'
ansible AppServers -m setup    -a 'gather_subset=!all,!min,hardware filter=ansible_python_version' --tree /tmp/facts 


ansible AppServers  -m setup    --ask-pass
ansible AppServers  -m setup    --ask-become-pass
ansible AppServers  -m setup    --private-key <PATH>
```
#### shell
```
ansible AppServers -m shell   -a "systemctl status httpd"
```
### host parterns and formats

```
- name: restart webservers
  host: webservers
        all or * | onehost | group
        group1:group2 - OR
        group1:!group2 - NOT In
        group1:&group2 - AND
        group1:group2:&test:!prod
        192.168.\*
        \*.com
        rhhost*.com:dbservers
        ~(web|db).*\.localnet\.com
```
#### ansible-<doc|console|playbook|inventory|config> commands

#### ansible-inventory
```
ansible-inventory --list
ansible-inventory --list --output inventory.json
ansible-inventory --graph
ansible-inventory --list -y

```

#### Inventory Plugins
```
enable_plugins = host_list, script, auto, yaml, ini, toml

ansible -i vbox.yml site.yml
ansible-inventory -i vbox.yml --graph
ansible-doc -t inventory -l 
ansible-doc -t inventory <plugin name>
```

#### ansible-doc
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

#### ansible-config

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

[defaults]
forks = 30

```

### serial 
```
---
  -name: Manage webservers
   host: webservers
   serial: "33%"
   
   serial:
      - 1
      - 5
      - 10
    
   serial:
      - "10%"
      - "50%"
      - "100%"

---
  task: 
  - command: /sbin/encryptefiles.sh
    throttle: 1
    ...
    strategy = free/linear
```


### Disable Fact Gathering - Ansible Performances
```
---
- name: Manage webservers
  hosts: webservers
  gather_facts: no
```


### when
```
---

- hosts: all
  become: true
  tasks:
  - name: Manage Ubuntu webservers
    apt:
      update_cache: yes
    when: ansible_distribution == "Ubuntu"
    when: ansible_distribution in ["Ubuntu", "Debian"]
  
  - name: Manage Centos webservers
    dnf:
      name: httpd
      state: latest
    when: ansible_distribution == "Centos"

```

#### ansible-console
```
ansible-console -b -K
    shell date
    yum name=gedit-plugins state=installed
```

#### ansible-playbook
```
ansible-playbook --syntax-check apache.yml
ansible-playbook apache.yml -b -K
ansible-playbook --check apache.yml
ansible-playbook deploy_web.yml -i staging -i production
```

```
ansible-galaxy install geerlinguy.apache
ansible-galaxy install geerlinguy.apache,v3.1.0
ansible-galaxy install -r requirements.yml
ansible-galaxy collection install <collection>

  src
  scm
  version
  name

ansible-galaxy list

```
# Documentation:

### modules
### https://docs.ansible.com/ansible/2.9/modules/modules_by_category.html

### ansible galaxy
### https://galaxy.ansible.com


# Track

6/8/2023
- decided to finish linkedin just viewing the videos and do labs only from book
- need to sync few things from labtop - done
- install git hub desktop for on mac - done

6/25/2023
- Ansible for Devops 
  - Lab install node.js app on rocky linux - done
  - Lab ubuntu lamp server with drupal - in progress
      - errors in Add drush to the Drupal site with Composer - page 78

6/26/2023
- youtube: 
  -  https://www.youtube.com/watch?v=3RiVKs8GHYQ&list=PLT98CRl2KxKEUHie1m24-wkyHpEsa4Y70  12/16
  - tmux
  - vim-nox

- pdf:
  - Red Hat Ansible Automation Platform A beginner’s guide pag 5/35





