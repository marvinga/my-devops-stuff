The `lineinfile` module in Ansible is used to ensure that a particular line is present or absent in a file on remote hosts. It allows you to add, modify, or remove specific lines in a file. 

1. Add a line to a file:
```yaml
- name: Add a line to a file
  lineinfile:
    path: /path/to/file.txt
    line: "This is a new line"
```
This example ensures that the specified line is present in the file. If the line already exists, no changes are made. If the line is not present, it is added to the file.

2. Replace a line in a file:
```yaml
- name: Replace a line in a file
  lineinfile:
    path: /path/to/file.txt
    regexp: "^Old line"
    line: "New line"
```
This example searches for a line that matches the regular expression `^Old line` in the file. If a match is found, the line is replaced with the specified new line.

3. Remove a line from a file:
```yaml
- name: Remove a line from a file
  lineinfile:
    path: /path/to/file.txt
    state: absent
    regexp: "^Unwanted line"
```
This example removes a line that matches the regular expression `^Unwanted line` from the file. If the line is found, it is removed.

4. Add a line with specific attributes:
```yaml
- name: Add a line with specific attributes
  lineinfile:
    path: /path/to/file.txt
    line: "New line"
    insertbefore: "# Section header"
    backup: yes
```
This example adds a line before the line containing `# Section header` in the file. It also creates a backup of the file before making any changes.

5. Configure indentation for a line:
```yaml
- name: Configure indentation for a line
  lineinfile:
    path: /path/to/file.txt
    line: "Indented line"
    insertafter: "Section header"
    indent: 4
```
This example adds an indented line after the line containing `Section header` in the file. The line is indented with four spaces.

