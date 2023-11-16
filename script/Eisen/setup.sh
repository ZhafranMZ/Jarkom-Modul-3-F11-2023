echo 'nameserver 192.168.122.1' > /etc/resolv.conf

apt-get update
apt-get install nginx apache2-utils -y

mkdir -p /etc/nginx/rahasisakita/

echo 'nameserver 10.57.1.2' > /etc/resolv.conf
