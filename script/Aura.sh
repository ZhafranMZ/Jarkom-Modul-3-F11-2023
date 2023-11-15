iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE -s 10.57.0.0/16

apt-get update
apt-get install isc-dhcp-relay -y
service isc-dhcp-relay start

echo "
net.ipv4.ip_forward=1
" > /etc/sysctl.conf

echo '
SERVERS="10.57.1.3"
INTERFACES="eth1 eth3 eth4"
OPTIONS=""
' > /etc/default/isc-dhcp-relay

service isc-dhcp-relay restart
