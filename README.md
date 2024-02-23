# LRN_ansible

## Examples
1. [Nginx Reverse-Proxy Configuration](examples/nginx-reverseproxy)
2. [Wordpress-nginx](examples/wordpress-nginx)

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