echo '
upstream myweb {
	server 10.57.3.1;
	server 10.57.3.2;
}
server {
	listen 80;

	location / {
		proxy_pass http://myweb;
	}
}
' > /etc/nginx/sites-available/granz.channel.f11.com

service nginx restart
