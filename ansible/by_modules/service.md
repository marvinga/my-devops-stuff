   - `systemd` module: Ensure the `nginx` service is started and enabled on systemd-based systems.
     ```yaml
     - name: Ensure nginx service is started and enabled
       systemd:
         name: nginx
         state: started
         enabled: yes
     ```

   - `service` module: Stop and disable the `httpd` service on CentOS/RHEL systems.
     ```yaml
     - name: Stop and disable httpd service
       service:
         name: httpd
         state: stopped
         enabled: no
     ```

   - `win_service` module: Restart the `wuauserv` service on Windows systems.
     ```yaml
     - name: Restart wuauserv service
       win_service:
         name: wuauserv
         state: restarted
     ```

   - `service_facts` module: Gather facts about services on a remote host.
     ```yaml
     - name: Gather service facts
       service_facts:
     ```

These are just examples to showcase the usage of different Ansible modules. The specific module and its options can be tailored to match your desired tasks and target systems.