mv modul-3 /var/www/riegel.canyon.f11.com

echo '
server {

listen 80;

root /var/www/riegel.canyon.f11.com;

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

error_log /var/log/nginx/riegel.canyon.f11.com_error.log;
access_log /var/log/nginx/riegel.canyon.f11.com_access.log;
}
' > /etc/nginx/sites-available/granz.channel.f11.com

ln -s /etc/nginx/sites-available/granz.channel.f11.com /etc/nginx/sites-enabled
rm /etc/nginx/sites-enabled/default
service php7.3-fpm start
service nginx restart
