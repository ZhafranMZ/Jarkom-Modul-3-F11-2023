echo 'nameserver 192.168.122.1' > /etc/resolv.conf

apt-get update
apt-get install ca-certificates unzip nginx php php-fpm -y

curl -sSLo granz.channel.yyy.com.zip https://github.com/ZhafranMZ/Jarkom-Modul-3-F11-2023/raw/main/resources/granz.channel.yyy.com.zip
unzip granz.channel.yyy.com.zip

echo 'nameserver 10.57.1.2' > /etc/resolv.conf
