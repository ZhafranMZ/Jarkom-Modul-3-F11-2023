htpasswd -b -c /etc/nginx/rahasisakita/.htpasswd netics ajkf11

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
		auth_basic "Restricted Content";
		auth_basic_user_file /etc/nginx/rahasisakita/.htpasswd;
	}
}
' > /etc/nginx/sites-available/granz.channel.f11.com

service nginx restart
