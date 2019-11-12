
upstream jenkins {
        server 127.0.0.1:8080;
}

server {
        listen 80 default_server;
        listen [::]:80 default_server;
        location / {
                proxy_pass http://jenkins;
                proxy_set_header Host $host;
                proxy_set_header X-Real_IP $remote_addr;
                }
}
