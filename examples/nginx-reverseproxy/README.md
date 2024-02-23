# Commands

```
# Check connection
ansible -i inventory.yml ubuntuservers -m ping

# Dry run playbook
ansible-playbook playbook.yml -i inventory.yml --extra-vars "hostname=web-server-1 SUB_DOMAIN=www.example.com" --check
```