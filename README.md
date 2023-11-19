# Jarkom-Modul-3-F11-2023
## Kelompok F11
## NAMA :
-	Muhammad Zhafran			(5025211100)
-	Mohamad Valdi Ananda Tauhid		(5025221238)

Link Project File GNS3 : [Google Drive](https://drive.google.com/file/d/1qYOMEXRjm-oj1eiydeq2nt_Cq1JmGdXE/view?usp=sharing)

### SOAL
**Perjalanan selanjutnya akan menggunakan peta berikut:**
![gambarModul3](https://github.com/ZhafranMZ/Jarkom-Modul-3-F11-2023/assets/114043452/44500189-4fca-4550-add7-f2a445ac7c53)

**Dengan ketentuan sebagai berikut:**
|Node|Kategori|Image Docker|Konfigurasi IP|
|----|--------|------------|--------------|
|Aura|Router (DHCP Relay)|danielcristh0/debian-buster:1.1|Dynamic|
|Himmel|DHCP Server|danielcristh0/debian-buster:1.1|Static|
|Heiter|DNS Server|danielcristh0/debian-buster:1.1|Static|
|Denken|Database Server|danielcristh0/debian-buster:1.1|Static|
|Eisen|Load Balancer|danielcristh0/debian-buster:1.1|Static|
|Frieren|Laravel Worker|danielcristh0/debian-buster:1.1|Static|
|Flamme|Laravel Worker|danielcristh0/debian-buster:1.1|Static|
|Fern|Laravel Worker|danielcristh0/debian-buster:1.1|Static|
|Lawine|PHP Worker|danielcristh0/debian-buster:1.1|Static|
|Linie|PHP Worker|danielcristh0/debian-buster:1.1|Static|
|Lugner|PHP Worker|danielcristh0/debian-buster:1.1|Static|
|Revolte|Client|danielcristh0/debian-buster:1.1|Dynamic|
|Richter|Client|danielcristh0/debian-buster:1.1|Dynamic|
|Sein|Client|danielcristh0/debian-buster:1.1|Dynamic|
|Stark|Client|danielcristh0/debian-buster:1.1|Dynamic|

Setelah mengalahkan Demon King, perjalanan berlanjut. Kali ini, kalian diminta untuk melakukan register domain berupa riegel.canyon.yyy.com untuk worker Laravel dan granz.channel.yyy.com untuk worker PHP (0) mengarah pada worker yang memiliki IP [prefix IP].x.1.

Lakukan konfigurasi sesuai dengan peta yang sudah diberikan.

Kemudian, karena masih banyak spell yang harus dikumpulkan, bantulah para petualang untuk memenuhi kriteria berikut.:
1. Semua CLIENT harus menggunakan konfigurasi dari DHCP Server.
2. Client yang melalui Switch3 mendapatkan range IP dari [prefix IP].3.16 - [prefix IP].3.32 dan [prefix IP].3.64 - [prefix IP].3.80 (2)
3. Client yang melalui Switch4 mendapatkan range IP dari [prefix IP].4.12 - [prefix IP].4.20 dan [prefix IP].4.160 - [prefix IP].4.168 (3)
4. Client mendapatkan DNS dari Heiter dan dapat terhubung dengan internet melalui DNS tersebut (4)
5. Lama waktu DHCP server meminjamkan alamat IP kepada Client yang melalui Switch3 selama 3 menit sedangkan pada client yang melalui Switch4 selama 12 menit. Dengan waktu maksimal dialokasikan untuk peminjaman alamat IP selama 96 menit (5)

Berjalannya waktu, petualang diminta untuk melakukan deployment.
1. Pada masing-masing worker PHP, lakukan konfigurasi virtual host untuk website berikut dengan menggunakan php 7.3. (6)
2. Kepala suku dari Bredt Region memberikan resource server sebagai berikut:
   - Lawine, 4GB, 2vCPU, dan 80 GB SSD.
   - Linie, 2GB, 2vCPU, dan 50 GB SSD.
   - Lugner 1GB, 1vCPU, dan 25 GB SSD.

aturlah agar Eisen dapat bekerja dengan maksimal, lalu lakukan testing dengan 1000 request dan 100 request/second. (7)

3. Karena diminta untuk menuliskan grimoire, buatlah analisis hasil testing dengan 200 request dan 10 request/second masing-masing algoritma Load Balancer dengan ketentuan sebagai berikut:
   - Nama Algoritma Load Balancer
   - Report hasil testing pada Apache Benchmark
   - Grafik request per second untuk masing masing algoritma.
   - Analisis (8)

4. Dengan menggunakan algoritma Round Robin, lakukan testing dengan menggunakan 3 worker, 2 worker, dan 1 worker sebanyak 100 request dengan 10 request/second, kemudian tambahkan grafiknya pada grimoire. (9)
5. Selanjutnya coba tambahkan konfigurasi autentikasi di LB dengan dengan kombinasi username: “netics” dan password: “ajkyyy”, dengan yyy merupakan kode kelompok. Terakhir simpan file “htpasswd” nya di /etc/nginx/rahasisakita/ (10)
6. Lalu buat untuk setiap request yang mengandung /its akan di proxy passing menuju halaman https://www.its.ac.id. (11) hint: (proxy_pass)
7. Selanjutnya LB ini hanya boleh diakses oleh client dengan IP [Prefix IP].3.69, [Prefix IP].3.70, [Prefix IP].4.167, dan [Prefix IP].4.168. (12) hint: (fixed in dulu clinetnya)

Karena para petualang kehabisan uang, mereka kembali bekerja untuk mengatur granz.channel.yyy.com.
1. Semua data yang diperlukan, diatur pada Denken dan harus dapat diakses oleh Frieren, Flamme, dan Fern. (13)
2. Frieren, Flamme, dan Fern memiliki Granz Channel sesuai dengan quest guide berikut. Jangan lupa melakukan instalasi PHP8.0 dan Composer (14)
3. Granz Channel memiliki beberapa endpoint yang harus ditesting sebanyak 100 request dengan 10 request/second. Tambahkan response dan hasil testing pada grimoire.
   - POST /auth/register (15)
   - POST /auth/login (16)
   - GET /me (17)
5. Untuk memastikan ketiganya bekerja sama secara adil untuk mengatur Granz Channel maka implementasikan Proxy Bind pada Eisen untuk mengaitkan IP dari Frieren, Flamme, dan Fern. (18)
6. Untuk meningkatkan performa dari Worker, coba implementasikan PHP-FPM pada Frieren, Flamme, dan Fern. Untuk testing kinerja naikkan
   - pm.max_children
   - pm.start_servers
   - pm.min_spare_servers
   - pm.max_spare_servers

sebanyak tiga percobaan dan lakukan testing sebanyak 100 request dengan 10 request/second kemudian berikan hasil analisisnya pada Grimoire.(19)

8. Nampaknya hanya menggunakan PHP-FPM tidak cukup untuk meningkatkan performa dari worker maka implementasikan Least-Conn pada Eisen. Untuk testing kinerja dari worker tersebut dilakukan sebanyak 100 request dengan 10 request/second. (20)

### PENJELASAN
Pertama jalankan setup.sh yang ada di node Aura(Aura/setup.sh)
```bash
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE -s 10.57.0.0/16

apt-get update
apt-get install isc-dhcp-relay -y
service isc-dhcp-relay start
```
0. Jalankan setup.sh yang ada di node Heiter lalu jalankan start-dns-server.sh
Heiter/setup.sh
```bash
echo 'nameserver 192.168.122.1' > /etc/resolv.conf

apt-get update
apt-get install bind9 -y

mkdir -p /etc/bind/praktikum

echo 'nameserver 10.57.1.2' > /etc/resolv.conf
```
Heiter/start-dns-server
```bash
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
@                 IN      NS      granz.channel.f11.com.
@                 IN      A       10.57.3.1
' > /etc/bind/praktikum/granz.channel.f11.com

service bind9 restart
```

1. a
2. 3, dan 5
Pertama jalankan start-dhcp-relay yang ada di node Aura.
```bash
echo "
net.ipv4.ip_forward=1
" > /etc/sysctl.conf

echo '
SERVERS="10.57.1.3"
INTERFACES="eth1 eth3 eth4"
OPTIONS=""
' > /etc/default/isc-dhcp-relay

service isc-dhcp-relay restart
```
Selanjutnya jalankan setup.sh dan start-dhcp-server.sh yang ada di node Himmel
Himmel/setup.sh
```bash
echo 'nameserver 192.168.122.1' > /etc/resolv.conf

apt-get update
apt-get install isc-dhcp-server --no-install-recommends -y

echo 'nameserver 10.57.1.2' > /etc/resolv.conf
```

Himmel/start-dhcp-server.sh
```bash
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
    hardware ethernet 26:e5:28:a8:68:0a;
    fixed-address 10.57.3.69;
}
' > /etc/dhcp/dhcpd.conf

service isc-dhcp-server restart
```
4. Jalankan enable-dns-forwarder.sh yang ada di node Heiter
Heiter/enable-dns-forwarder.sh
```bash
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

service bind9 restart
```

6. Untuk Lawine, Linie, dan Lugner memiliki kode yang sama, pertama jalankan setup.sh lalu enable-php-server.sh
Contoh pada Lawine: setup.sh
```bash
echo 'nameserver 192.168.122.1' > /etc/resolv.conf

apt-get update
apt-get install ca-certificates unzip nginx php php-fpm -y

curl -sSLo granz.channel.yyy.com.zip https://github.com/ZhafranMZ/Jarkom-Modul-3-F11-2023/raw/main/resources/granz.channel.yyy.com.zip
unzip granz.channel.yyy.com.zip

echo 'nameserver 10.57.1.2' > /etc/resolv.conf
```

enable-php-server.sh
```bash
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
```
7. Pertama jalankan setup.sh dan enable-load-balancer.sh yang ada di node Eisen
Eisen/setup.sh
```bash
echo 'nameserver 192.168.122.1' > /etc/resolv.conf

apt-get update
apt-get install nginx apache2-utils -y

mkdir -p /etc/nginx/rahasisakita/

echo 'nameserver 10.57.1.2' > /etc/resolv.conf
```

Eisen/enable-load-balancer.sh
```bash
echo '
upstream myweb {
	server 10.57.3.1;
	server 10.57.3.2;
	server 10.57.3.3;
}
server {
	listen 80;

	location / {
		proxy_pass http://myweb;
	}
}
' > /etc/nginx/sites-available/granz.channel.f11.com

ln -s /etc/nginx/sites-available/granz.channel.f11.com /etc/nginx/sites-enabled
rm /etc/nginx/sites-enabled/default
service nginx restart
```

Setelah itu jalankan setup.sh dan test-load-balancer.sh yang ada di node Revolte

Revolte/setup.sh
```bash
echo 'nameserver 192.168.122.1' > /etc/resolv.conf

apt-get update
apt-get install apache2-utils lynx jq -y

echo 'nameserver 10.57.1.2' > /etc/resolv.conf

echo '
{
  "username": "kelompokF11",
  "password": "passwordF11"
}' > /root/account.json
```

Revolte/test-load-balancer.sh
```bash
ab -n 1000 -c 100 http://10.57.2.2/ > 7-load_balancer_test_result.txt
```

8. Pertama-tama
   a. jalankan Eisen/set-load-balancer-roundrobin.sh lalu jalankan Revolte/test-load-balancer.sh
   b. lalu Eisen.set-load-balancer-leastconnection.sh dan Revolte/test-load-balancer.sh
   c. lalu Eisen.set-load-balancer-iphash.sh dan Revolte/test-load-balancer.sh
   d. lalu Eisen.set-load-balancer-generichash.sh dan Revolte/test-load-balancer.sh

9. Jalankan secara berurutan
   - Eisen/set-load-balancer-roundrobin-1.sh
   - Revolte/test-load-balancer.sh
   - Eisen/set-load-balancer-roundrobin-2.sh
   - Revolte/test-load-balancer.sh
   - Eisen/set-load-balancer-roundrobin-3.sh
   - Revolte/test-load-balancer.sh 

10. Jalankan enable-authentication yang berada di node Eisen
11. Jalankan enable-its-path.sh yang berada di node Eisen
12. Jalankan enable-ip-filter.sh yang berada di node Eisen
13. Jalankan setup.sh dan enable-mysql.sh yang berada di node Denken
14. Jalankan secara berurutan
    - Fern/setup.sh
    - Fern/start-laravel.sh
    - Flamme/setup.sh
    - Flamme/start-laravel.sh
    - Frieren/setup.sh
    - Frieren/start-laravel.sh
15. Jalankan test-laravel-register.sh yang berada pada node Revolte
16. Jalankan test-laravel-login.sh yang berada pada node Revolte
17. Jalankan test-laravel-me.sh yang berada pada node Revolte
18. Jalankan enable-granz--channel.sh yang berada pada node Revolte
19. Jalankan secara berurutan
    - Lawine/increase-performance-1.sh
    - Linie/increase-performance-1.sh
    - Lugner/increase-performance-1.sh
    - test-load-balancer-performance.sh
    - Lawine/increase-performance-2.sh
    - Linie/increase-performance-2.sh
    - Lugner/increase-performance-2.sh
    - test-load-balancer-performance.sh
    - Lawine/increase-performance-3.sh
    - Linie/increase-performance-3.sh
    - Lugner/increase-performance-3.sh
    - test-load-balancer-performance.sh
20. Jalankan secara berurutan
    - Eisen/set-load-balancer-leastconnection-after-performance.sh
```bash
echo '
upstream myweb {
	server 10.57.3.1;
	server 10.57.3.2;
	server 10.57.3.3;
}
server {
	listen 80;
	allow 10.57.3.69;
	allow 10.57.3.70;
	allow 10.57.4.167;
	allow 10.57.4.168;
	deny all;

	location / {
		proxy_pass http://myweb;
		auth_basic "Restricted Content";
		auth_basic_user_file /etc/nginx/rahasisakita/.htpasswd;
	}
	location /its {
		proxy_pass https://www.its.ac.id;
		proxy_set_header Host www.its.ac.id;
		proxy_set_header X-Real-IP $remote_addr;
		proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
		proxy_set_header X-Forwarded-Proto $scheme;
	}
}
' > /etc/nginx/sites-available/granz.channel.f11.com

service nginx restart```
    - test-load-balancer-performance.sh




