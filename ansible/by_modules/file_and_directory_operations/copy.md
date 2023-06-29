The `copy` module in Ansible is used to copy files and directories from the local machine to remote hosts. 

1. Copy a file to a remote host:
```yaml
- name: Copy file
  copy:
    src: /path/to/local/file.txt
    dest: /path/to/remote/file.txt
```
This example copies the file from the local machine to the specified destination path on the remote host.

2. Copy a file with specific permissions and ownership:
```yaml
- name: Copy file with permissions and ownership
  copy:
    src: /path/to/local/file.txt
    dest: /path/to/remote/file.txt
    owner: user1
    group: group1
    mode: "0644"
```
This example copies the file from the local machine to the remote host while also setting the ownership, group, and permissions of the file.

3. Copy a directory to a remote host:
```yaml
- name: Copy directory
  copy:
    src: /path/to/local/directory
    dest: /path/to/remote/directory
    recursive: yes
```
This example copies the entire directory from the local machine to the specified destination path on the remote host. The `recursive` option is set to `yes` to ensure the directory and its contents are copied.

4. Copy a file and preserve timestamps:
```yaml
- name: Copy file with preserved timestamps
  copy:
    src: /path/to/local/file.txt
    dest: /path/to/remote/file.txt
    preserve_timestamps: yes
```
This example copies the file from the local machine to the remote host while preserving the original timestamps (e.g., modification time) of the file.

5. Copy a file and use a specific file mode:
```yaml
- name: Copy file with specific mode
  copy:
    src: /path/to/local/file.txt
    dest: /path/to/remote/file.txt
    mode: "0644"
```
This example copies the file from the local machine to the remote host and sets the permissions of the file using the specified mode.
