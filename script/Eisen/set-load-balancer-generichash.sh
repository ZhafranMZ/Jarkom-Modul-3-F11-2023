echo '
upstream myweb {
	hash $request_uri consistent;
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

service nginx restart