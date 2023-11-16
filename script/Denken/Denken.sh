echo 'nameserver 192.168.122.1' > /etc/resolv.conf

apt-get update
apt-get install mariadb-server -y

service mysql start

echo "
CREATE USER 'kelompokf11'@'%' IDENTIFIED BY 'passwordf11';
CREATE USER 'kelompokf11'@'localhost' IDENTIFIED BY 'passwordf11';
CREATE DATABASE dbkelompokf11;
GRANT ALL PRIVILEGES ON *.* TO 'kelompokf11'@'%';
GRANT ALL PRIVILEGES ON *.* TO 'kelompokf11'@'localhost';
FLUSH PRIVILEGES;
exit;
" > init.sql
mysql -u root < ./init.sql

echo '
[client-server] 
!includedir /etc/mysql/conf.d/
!includedir /etc/mysql/mariadb.conf.d/

[mysqld]
skip-networking=0
skip-bind-address
' > /etc/mysql/my.cnf

service mysql restart
