the `yum` module, which is commonly used for package management on CentOS/RHEL systems with Ansible:

1. Install a package:
```yaml
- name: Install Apache package
  yum:
    name: httpd
    state: present
```
This example installs the `httpd` package on the target CentOS/RHEL system if it is not already installed.

2. Remove a package:
```yaml
- name: Remove MySQL package
  yum:
    name: mysql-server
    state: absent
```
This example removes the `mysql-server` package from the target system if it is installed.

3. Update all packages:
```yaml
- name: Update all packages
  yum:
    name: '*'
    state: latest
```
This example performs a system-wide update by upgrading all installed packages to their latest versions.

4. Install a specific package version:
```yaml
- name: Install specific version of a package
  yum:
    name: httpd-2.4.6-97.el7.centos
    state: present
```
This example installs a specific version of the `httpd` package, in this case version `2.4.6-97.el7.centos`.

5. Install multiple packages:
```yaml
- name: Install multiple packages
  yum:
    name:
      - httpd
      - php
      - mysql-server
    state: present
```
This example installs multiple packages (`httpd`, `php`, and `mysql-server`) on the target system.

6. Upgrade a package:
```yaml
- name: Upgrade httpd package
  yum:
    name: httpd
    state: latest
```
This example upgrades the `httpd` package to the latest available version.

