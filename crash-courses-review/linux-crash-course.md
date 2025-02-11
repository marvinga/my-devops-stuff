- local vagrant env
  - cd C:\Users\marvinga\Github\my-devops-stuff\vagrant\vagrantfiles\AppServers
  - vagrant up AppSrv01
  - ssh vagrant@192.168.50.101/vagrant
- course lab
  - https://kode.wiki/linux-labs
- *log into local & remote consoles*
- login methods
  - cli & graphical
   - local
   - remote
     - rdp protocol
     - vnc
  - ssh - secure shell
    - ssh daemon
    - ssh client
  - telnet - dont encrypt com
```bash
ip a
ssh -V - version
ssh vagrant@192.168.50.101
ssh -v -- verbose

```
```bash
ls --help
journalctl --help
man journalctl
man 1 printf
man 3 printf
apropos -- to be refreshed - sudo mandb
apropos directo
tab suggestions:
systemctl list-dependencies
hostnamectl
```
---
```bash
#fs tree
cd
pwd
touch
mkdir
cp -r
mv
rm -r

#links
- hard links
- soft links

stat file
[vagrant@AppSrv01 ~]$ stat .bash_logout
  File: .bash_logout
  Size: 18              Blocks: 8          IO Block: 4096   regular file
Device: 801h/2049d      Inode: 262465      Links: 1
Access: (0644/-rw-r--r--)  Uid: ( 1000/ vagrant)   Gid: ( 1000/ vagrant)
Context: unconfined_u:object_r:user_home_t:s0
Access: 2025-02-10 14:27:38.034079383 +0000
Modify: 2024-02-15 15:31:33.000000000 +0000
Change: 2025-01-13 04:20:20.771000000 +0000
Birth: 2025-01-13 04:20:20.771000000 +0000

#hard link
ln path_to_target path_to_link_file - same inode to the target file - only in same fs - only to files no folders
#soft link
ln -s path_to_target path_to_link_file
ln -s .ssh/authorized_keys key
readlink key

useradd -a -G family aaron
useradd -a -G family jane
chmod 660 /home/pictures
```  
---
```bash
chgrp wheel file
groups
sudo chown jane file
rwx-r-x-r-x
own-grp-oth

chmod u+w/u+rw/u+rwx file
chmod g+w/g+rw/g+rwx
chmod o+w/o+rw/o+rwx

chmod u-w/u-rw/u-rwx
chmod g-w/g-rw/g-rwx
chmod o-w/o-rw/o-rwx

chmod u=w/u=rw/u=rwx
chmod g=w/g=rw/g=rwx
chmod o=w/o=rw/o=rwx

chmod g=rwx file2
chmod u+rw,g=r,o= file

[marvingm@AppSrv01 ~]$ stat file2
Access: (0604/-rw----r--)  Uid: ( 1001/marvingm)   Gid: ( 1001/marvingm)

chmod 640 file

``` 
![image](https://github.com/user-attachments/assets/0f4d1e58-8db3-4bf4-9737-274c84795470)

![image](https://github.com/user-attachments/assets/9ca157ee-0d69-49f2-9c89-7c9c0322783a)

![image](https://github.com/user-attachments/assets/b3cc6514-f2b1-4932-b183-1557596258ad)

---
```bash
less file
vim - improved
  :10
  yy
  p
  dd
  p
```
```bash
grep string file
grep -ir
sudo grep -ir
grep -v
grep -w
grep -o

# regex ^ $ . * + {} ? |  [] () [^]

grep '^sam' file - begin
grep 'sam$' file - end
grep -wr 'c.t' file
grep -wr 'c\.t' file
grep -r 't*' - last char exist mult times

grep -E - extended
grep -Er '0+' /etc/
egrep r '0+' /etc

egrep -r '0{3,}' file   - three 0s at least
egrep -r '10{3,}' file  - min
egrep -r '10{3,5}' file - max

egrep -r 'disabled?' file - optional

egrep -r 'enable|disabled' file - or
egrep -ir 'enabled?|disabled?' file - or

[a-z]
[0-9]
[abz954]

egrep -r 'c[au]t' file
egrep -r '/dev/.*' file
egrep -r '/dev/[a-z]*[0-9]' file
egrep -r '/dev/[a-z]*[0-9]?' file

egrep -r '/dev/([a-z]*[0-9]?)*' file
egrep -r '/dev/(([a-z]|[A-Z])*[0-9]?)*' file

egrep -r 'http[^s]' file
egrep -r 'http[^s]' file
egrep -r '/[^a-z]' file
```
---
```bash
# user accounts
sudo useradd john
  shell /bin/bash
  home /home/john

ls -lart /etc/skel

useradd --defaults
useradd -D
/etc/login.defs

sudo passwd john
sudo userdel john
sudo useradd -shell /bin/bash --home-dir /home/use_home user_name
sudo useradd -s /bin/bash -h /homedir/ user_name

sudo useradd --uid 1100 user
sudo useradd -u 1120 user

id
whoami
sudo useradd --system sysacc - intented for programs

sudo usermod -d /homedir -m user
sudo usermod -l user1 user2

sudo usermod --lock user1
sudo usermode --unlock user1
sudo usermod -e 2021-12-10
sudo usermod -e ""
sudo chage --lastday 0 user
sudo chage --lastday -1 user
sudo chage --maxdays 30 user
sudo chage --list user

sudo chage --list user1
Last password change                                    : Feb 10, 2025
Password expires                                        : Mar 12, 2025
Password inactive                                       : never
Account expires                                         : never
Minimum number of days between password change          : 0
Maximum number of days between password change          : 30
Number of days of warning before password expires       : 7
```
---
```bash
groups
  primary - login group
sudo groupadd developers

sudo gpasswd -a john developers
sudo gpasswd -d user1 devs
sudo groups user1

sudo usermod -g user1 user1
sudo usermod -G devs user1
sudo groupdel devs

sudo vim /etc/security/limits.conf
ulimit -a
```
![image](https://github.com/user-attachments/assets/87cd6782-a195-4a3d-8935-d6fdd63bf8b6)
---
```bash
groups - wheel - allow sudo
sudo gpasswd -a user wheel
sudo visudo
/etc/sudoers
## Same thing without a password
# %wheel        ALL=(ALL)       NOPASSWD: ALL
user/group host=(run_as_user) command_list

user1 ALL=(ALL) ALL
sudo -u user1 ls file

user1 ALL=(aaron,john) ALL
user ALL=(ALL) /bin/ls, /bin/stat
sudo echo "Test passed?" - error
user ALL= NOPASSWD:ALL - no password

sudo -i = sudo --login
logout
su -
su -l

sudo --login
sudo passwd --u root -unlock root
sudo passwd --lock root
```





