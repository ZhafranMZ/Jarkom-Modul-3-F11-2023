echo 'nameserver 192.168.122.1' > /etc/resolv.conf

apt-get update
apt-get install nginx apache2-utils -y

mkdir -p /etc/nginx/rahasisakita/

htpasswd -b -c /etc/nginx/rahasisakita/.htpasswd netics ajkf11

echo '
upstream myweb {
	server 10.57.3.1;
	server 10.57.3.2;
	server 10.57.3.3;
}
server {
	listen 80;
	deny all;
	allow 10.57.3.69;
	allow 10.57.3.70;
	allow 10.57.4.167;
	allow 10.57.4.168;

	location / {
		proxy_pass http://myweb;
		auth_basic "Restricted Content";
		auth_basic_user_file /etc/nginx/rahasisakita/.htpasswd;
	}
	location /its {
		proxy_pass https://www.its.ac.id;
	}
}
' > /etc/nginx/sites-available/granz.channel.f11.com

	ln -s /etc/nginx/sites-available/granz.channel.f11.com /etc/nginx/sites-enabled
	rm /etc/nginx/sites-enabled/default
	service nginx restart
