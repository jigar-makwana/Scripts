# cd /etc/nginx/sites-available# vi default 
# Nginx integration with jenkins using loopback 
# you can disable 8080 port after this and use nginx for controlling jekins 
# This is simple example you can add more security on this conf file.

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
#nginx -t
