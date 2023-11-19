echo '
[www]
user = www-data
group = www-data

listen = /run/php/php7.3-fpm.sock
listen.owner = www-data
listen.group = www-data

pm = dynamic

pm.max_children = 10
pm.start_servers = 2
pm.min_spare_servers = 1
pm.max_spare_servers = 3
' > /etc/php/7.3/fpm/pool.d/www.conf

service php7.3-fpm restart