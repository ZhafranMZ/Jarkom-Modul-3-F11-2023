echo 'nameserver 192.168.122.1' > /etc/resolv.conf

apt-get update
apt-get install isc-dhcp-server --no-install-recommends -y

echo '
INTERFACESv4="eth0"
INTERFACESv6=""
' > /etc/default/isc-dhcp-server

echo '
default-lease-time 600;
max-lease-time 7200;

ddns-update-style none;

subnet 10.57.1.0 netmask 255.255.255.0 {
}

subnet 10.57.3.0 netmask 255.255.255.0 {
    range 10.57.3.16 10.57.3.32;
    range 10.57.3.64 10.57.3.80;
    option routers 10.57.3.254;
    option broadcast-address 10.57.3.255;
    option domain-name-servers 10.57.1.2;
    default-lease-time 180;
    max-lease-time 5760;
}

subnet 10.57.4.0 netmask 255.255.255.0 {
    range 10.57.4.12 10.57.4.20;
    range 10.57.4.160 10.57.4.168;
    option routers 10.57.4.1;
    option broadcast-address 10.57.4.255;
    option domain-name-servers 10.57.1.2;
    default-lease-time 720;
    max-lease-time 5760;
}

host Revolte {
    harware ethernet fe:c0:13:f5:1c:02;
    fixed-address 192.173.3.69;
}
' > /etc/dhcp/dhcpd.conf

service isc-dhcp-server restart
