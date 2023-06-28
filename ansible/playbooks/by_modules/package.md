   - `apt` module: Install the `nginx` package on Debian/Ubuntu systems.
     
     ```yaml
     - name: Install nginx package
       apt:
         name: nginx
         state: present
     ```

   - `yum` module: Ensure the `httpd` package is installed on CentOS/RHEL systems.
   
     ```yaml
     - name: Ensure httpd package is installed
       yum:
         name: httpd
         state: present
     ```

   - `dnf` module: Install the `docker` package on Fedora systems.
     ```yaml
     - name: Install docker package
       dnf:
         name: docker
         state: present
     ```

   - `homebrew` module: Install the `tree` package on macOS systems using Homebrew.
     ```yaml
     - name: Install tree package
       homebrew:
         name: tree
         state: present
     ```
