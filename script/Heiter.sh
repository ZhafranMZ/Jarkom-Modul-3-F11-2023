echo 'nameserver 192.168.122.1' > /etc/resolv.conf

apt-get update
apt-get install bind9 -y

echo '
zone "riegel.canyon.f11.com" {
	type master;
	file "/etc/bind/praktikum/riegel.canyon.f11.com";
};
zone "granz.channel.f11.com" {
	type master;
	file "/etc/bind/praktikum/granz.channel.f11.com";
};
' > /etc/bind/named.conf.local

echo '
options {
  directory "/var/cache/bind";
  forwarders {
    192.168.122.1;
  };
  allow-query{any;};

  listen-on-v6 { any; };
};
' > /etc/bind/named.conf.options

mkdir -p /etc/bind/praktikum

echo '
;
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     riegel.canyon.f11.com. root.riegel.canyon.f11.com. (
                              2         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@       IN      NS      riegel.canyon.f11.com.
@       IN      A       10.57.2.2
www     IN      CNAME   riegel.canyon.f11.com.
' > /etc/bind/praktikum/riegel.canyon.f11.com

echo '
;
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     granz.channel.f11.com. root.granz.channel.f11.com. (
                              2         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@       IN      NS      granz.channel.f11.com.
@       IN      A       10.57.2.2
www     IN      CNAME   granz.channel.f11.com.
roundrobin			IN      CNAME   granz.channel.f11.com.
roundrobin1			IN      CNAME   granz.channel.f11.com.
roundrobin2			IN      CNAME   granz.channel.f11.com.
roundrobin3			IN      CNAME   granz.channel.f11.com.
leastconnection		IN      CNAME   granz.channel.f11.com.
iphash				IN      CNAME   granz.channel.f11.com.
generichash			IN      CNAME   granz.channel.f11.com.
' > /etc/bind/praktikum/granz.channel.f11.com

service bind9 restart
