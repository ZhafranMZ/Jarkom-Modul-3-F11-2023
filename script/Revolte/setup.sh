echo 'nameserver 192.168.122.1' > /etc/resolv.conf

apt-get update
apt-get install apache2-utils lynx less -y

echo 'nameserver 10.57.1.2' > /etc/resolv.conf
