The service_facts module in Ansible is used to gather information about services running on remote hosts. I

1. Gather facts about all services and display their details:
```yaml
- name: Gather service facts
  service_facts:
```
This example collects information about all services running on the remote host and makes the facts available in the `ansible_facts.services` variable.

2. Display the status of a specific service:
```yaml
- name: Check status of Apache service
  debug:
    var: ansible_facts.services['apache2'].state
```
This example retrieves and displays the current status of the Apache service on the remote host.

3. Check if a service is enabled or disabled:
```yaml
- name: Check if SSH service is enabled
  debug:
    var: ansible_facts.services['sshd'].enabled
```
This example checks whether the SSH service is enabled on the remote host and prints the result.

4. Determine the service description and startup type:
```yaml
- name: Display service details
  debug:
    msg: "Service: {{ item.key }}, Description: {{ item.value.description }}, Startup Type: {{ item.value.startup }}"
  loop: "{{ ansible_facts.services | dict2items }}"
```
This example iterates through all the services on the remote host and displays their names, descriptions, and startup types.

5. Perform actions based on service availability:
```yaml
- name: Start service if stopped
  service:
    name: "{{ item.key }}"
    state: started
  loop: "{{ ansible_facts.services | dict2items }}"
  when: item.value.state == 'stopped'
```
This example starts any services that are currently stopped on the remote host. It loops through the service facts and conditionally starts services that are in a stopped state.

These examples demonstrate different ways to utilize the `service_facts` module in Ansible to gather information about services running on remote hosts. The collected facts can be accessed and used to make decisions or perform tasks based on the current status, enabled/disabled state, and other properties of the services.