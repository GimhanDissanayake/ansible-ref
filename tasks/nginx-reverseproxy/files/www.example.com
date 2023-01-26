server {
    listen 80;
    listen [::]:80;
    server_name www.example.com;

    return 301  https://www.example.com$request_uri;
}

server {
        listen 443 ssl;
        listen [::]:443 ssl;

        server_name         www.example.com;
        ssl_certificate     /home/ubuntu/ssl-certs/www.example.com.crt;
        ssl_certificate_key /home/ubuntu/ssl-certs/www.example.com.key;

        location / {
                proxy_pass http://127.0.0.1:8080;
                proxy_set_header X-Real-IP $remote_addr;
                proxy_set_header X-Forwarded-Host $host;
                proxy_set_header X-Forwarded-Port $server_port;
        }
}