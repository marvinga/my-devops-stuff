the `apt` module, which is commonly used for package management on Debian/Ubuntu systems with Ansible:

1. Install a package:
```yaml
- name: Install nginx package
  apt:
    name: nginx
    state: present
```
This example installs the `nginx` package on the target Debian/Ubuntu system if it is not already installed.

2. Remove a package:
```yaml
- name: Remove Apache package
  apt:
    name: apache2
    state: absent
```
This example removes the `apache2` package from the target system if it is installed.

3. Update all packages:
```yaml
- name: Update all packages
  apt:
    upgrade: 'yes'
    update_cache: 'yes'
```
This example performs a system-wide update by upgrading all installed packages and updating the package cache.

4. Install a specific package version:
```yaml
- name: Install specific version of a package
  apt:
    name: nginx=1.14.0-0ubuntu1.7
    state: present
```
This example installs a specific version of the `nginx` package, in this case version `1.14.0-0ubuntu1.7`.

5. Install multiple packages:
```yaml
- name: Install multiple packages
  apt:
    name:
      - nginx
      - php-fpm
      - mysql-server
    state: present
```
This example installs multiple packages (`nginx`, `php-fpm`, and `mysql-server`) on the target system.

6. Upgrade a package:
```yaml
- name: Upgrade nginx package
  apt:
    name: nginx
    state: latest
```
This example upgrades the `nginx` package to the latest available version.

These examples demonstrate some common use cases of the `apt` module for package management with Ansible. You can customize the module parameters and package names based on your specific requirements.