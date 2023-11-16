echo '
upstream laravel {
    server 10.57.4.2:8000;
    server 10.57.4.3:8000;
    server 10.57.4.4:8000;
}
server {
        listen 80;
        server_name riegel.canyon.f11.com;

        location / {
                proxy_pass http://laravel;
        }
}
' > /etc/nginx/sites-available/riegel.canyon.f11.com


ln -s /etc/nginx/sites-available/riegel.canyon.f11.com /etc/nginx/sites-enabled
service nginx restart

