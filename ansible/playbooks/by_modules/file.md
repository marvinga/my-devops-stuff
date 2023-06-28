   - `copy` module: Copy a local file to a remote host.
     ```yaml
     - name: Copy file
       copy:
         src: /path/to/local/file
         dest: /path/to/remote/file
     ```

   - `template` module: Generate a file from a Jinja2 template and copy it to a remote host.
     ```yaml
     - name: Generate and copy file from template
       template:
         src: /path/to/template.j2
         dest: /path/to/remote/file
     ```

   - `lineinfile` module: Add a line to a specific file on a remote host.
     ```yaml
     - name: Add line to file
       lineinfile:
         path: /path/to/file
         line: 'This is a new line'
     ```

   - `file` module: Set permissions and ownership for a file on a remote host.
     ```yaml
     - name: Set file permissions and ownership
       file:
         path: /path/to/file
         owner: user1
         group: group1
         mode: '0644'
     ```
