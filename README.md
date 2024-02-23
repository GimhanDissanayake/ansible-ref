# LRN_ansible

# Tasks
1. [Nginx Reverse-Proxy Configuration](tasks/nginx-reverseproxy)


## Test connection to host
```
ansible -i inventory.yml webserver -m ping
```

## Adhoc command
```
ansible -i inventory webservers -m "shell" -a "ls"
```

## Ansible Galaxy Commands
```
ansible-galaxy init <new_role>
``` 