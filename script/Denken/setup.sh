echo 'nameserver 192.168.122.1' > /etc/resolv.conf

apt-get update
apt-get install mariadb-server -y

service mysql start

echo 'nameserver 10.57.1.2' > /etc/resolv.conf
