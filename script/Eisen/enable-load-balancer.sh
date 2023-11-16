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
