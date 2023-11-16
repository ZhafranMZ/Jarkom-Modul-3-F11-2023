echo 'nameserver 192.168.122.1' > /etc/resolv.conf

apt-get update
apt-get install bind9 -y

mkdir -p /etc/bind/praktikum

echo 'nameserver 10.57.1.2' > /etc/resolv.conf
