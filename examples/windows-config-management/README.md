## Referance

https://docs.ansible.com/ansible/latest/os_guide/windows_setup.html#setting-up-a-windows-host

https://docs.ansible.com/ansible/latest/reference_appendices/python_3_support.html

## Install ansible.windows collection
```
ansible-galaxy collection install ansible.windows
```

## Run playbook
```
ansible-playbook -i inventory playbook.yml
```