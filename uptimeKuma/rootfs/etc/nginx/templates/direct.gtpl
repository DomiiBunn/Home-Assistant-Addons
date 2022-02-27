server {
    listen {{ .port }} default_server;

    include /etc/nginx/includes/server_params.conf;
    include /etc/nginx/includes/proxy_params.conf;

    location /endpoint/ {
        proxy_pass http://backend;
    }

    location / {
        proxy_pass http://backend;
    }
}
