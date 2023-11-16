htpasswd -b -c /etc/nginx/rahasisakita/.htpasswd netics ajkf11

echo '
upstream myweb {
	server 10.57.3.1;
	server 10.57.3.2;
	server 10.57.3.3;
}
server {
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

ln -s /etc/nginx/sites-available/granz.channel.f11.com /etc/nginx/sites-enabled
rm /etc/nginx/sites-enabled/default
service nginx restart
