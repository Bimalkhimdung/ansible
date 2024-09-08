---
- name: Ansible automation for version update
  hosts: dhub
  gather_facts: false

  tasks:
    - name: Building Dist file
      ansible.builtin.shell: /home/qaqc/production/client_version_update.sh {{ c_name }} {{ h_f }}
      args:
        chdir: /home/qaqc/production
        executable: /bin/bash
