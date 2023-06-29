The `file` module in Ansible is used to manage files and directories on remote hosts. 

1. Create a directory:
```yaml
- name: Create directory
  file:
    path: /path/to/directory
    state: directory
```
This example creates a directory at the specified path if it does not already exist.

2. Remove a file:
```yaml
- name: Remove file
  file:
    path: /path/to/file.txt
    state: absent
```
This example removes the specified file if it exists.

3. Set file permissions:
```yaml
- name: Set file permissions
  file:
    path: /path/to/file.txt
    mode: "0644"
```
This example sets the permissions of the file to read and write for the owner and read-only for others.

4. Change ownership of a file:
```yaml
- name: Change file ownership
  file:
    path: /path/to/file.txt
    owner: user1
    group: group1
```
This example changes the ownership of the file to `user1` and the group to `group1`.

5. Ensure a file is present:
```yaml
- name: Ensure file is present
  file:
    path: /path/to/file.txt
    state: touch
```
This example ensures that the file exists at the specified path. If it doesn't exist, it will be created as an empty file.

6. Copy a file:
```yaml
- name: Copy file
  file:
    src: /path/to/source/file.txt
    dest: /path/to/destination/file.txt
    state: copy
```
This example copies a file from the source path to the destination path.

7. Change file attributes:
```yaml
- name: Change file attributes
  file:
    path: /path/to/file.txt
    attributes: +i
```
This example changes the file attributes, setting the "immutable" attribute on the file.
