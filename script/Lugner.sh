echo 'nameserver 192.168.122.1' > /etc/resolv.conf

apt-get update
apt-get install nginx php php-fpm -y

echo '
server {

listen 80;

root /var/www/granz.channel.f11.com;

index index.php index.html index.htm;
server_name _;

location / {
        try_files $uri $uri/ /index.php?$query_string;
}

# pass PHP scripts to FastCGI server
location ~ \.php$ {
        include snippets/fastcgi-php.conf;
        fastcgi_pass unix:/var/run/php/php7.3-fpm.sock;
}

location ~ /\.ht {
        deny all;
}

error_log /var/log/nginx/granz.channel.f11.com_error.log;
access_log /var/log/nginx/granz.channel.f11.com_access.log;
}
' > /etc/nginx/sites-available/granz.channel.f11.com

mkdir -p /var/www/granz.channel.f11.com

echo '
<?php
echo "Halo, Kamu berada di Lugner";
?>
' > /var/www/granz.channel.f11.com/index.php


ln -s /etc/nginx/sites-available/granz.channel.f11.com /etc/nginx/sites-enabled
service nginx restart
