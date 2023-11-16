echo 'nameserver 192.168.122.1' > /etc/resolv.conf

apt-get update
apt-get install mariadb-client git lsb-release ca-certificates apt-transport-https software-properties-common gnupg2 git -y
curl -sSLo /usr/share/keyrings/deb.sury.org-php.gpg https://packages.sury.org/php/apt.gpg
sh -c 'echo "deb [signed-by=/usr/share/keyrings/deb.sury.org-php.gpg] https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'

apt-get update
apt-get install php8.0-mbstring php8.0-xml php8.0-cli php8.0-common php8.0-intl php8.0-opcache php8.0-readline php8.0-mysql php8.0-fpm php8.0-curl unzip wget nginx -y

service php8.0-fpm start
service nginx restart

echo 'nameserver 10.57.1.2' > /etc/resolv.conf
