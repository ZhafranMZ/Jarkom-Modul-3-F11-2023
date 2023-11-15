echo 'nameserver 192.168.122.1' > /etc/resolv.conf

apt-get update
apt-get install nginx -y

echo '
# Default menggunakan Round Robin
upstream myweb {
 	server 10.57.3.2;
 	server 10.57.3.3;
 	server 10.57.3.4;
}

upstream mywebroundrobin {
 	server 10.57.3.2;
 	server 10.57.3.3;
 	server 10.57.3.4;
}

upstream mywebroundrobin1 {
 	server 10.57.3.2;
}

upstream mywebroundrobin2 {
 	server 10.57.3.2;
 	server 10.57.3.3;
}

upstream mywebroundrobin3 {
 	server 10.57.3.2;
 	server 10.57.3.3;
 	server 10.57.3.4;
}

upstream mywebleastconnection {
    least_conn;
 	server 10.57.3.2;
 	server 10.57.3.3;
 	server 10.57.3.4;
}

upstream mywebiphash {
    ip_hash;
 	server 10.57.3.2;
 	server 10.57.3.3;
 	server 10.57.3.4;
}

upstream mywebgenerichash {
 	server 10.57.3.2;
 	server 10.57.3.3;
 	server 10.57.3.4;
}

server {
 	listen 80;
 	server_name granz.channel.f11.com;

 	location / {
 	proxy_pass http://myweb;
 	}
}

server {
 	listen 80;
 	server_name roundrobin.granz.channel.f11.com;

 	location / {
 	proxy_pass http://mywebroundrobin;
 	}
}

server {
 	listen 80;
 	server_name roundrobin1.granz.channel.f11.com;

 	location / {
 	proxy_pass http://mywebroundrobin1;
 	}
}

server {
 	listen 80;
 	server_name roundrobin2.granz.channel.f11.com;

 	location / {
 	proxy_pass http://mywebroundrobin2;
 	}
}

server {
 	listen 80;
 	server_name roundrobin3.granz.channel.f11.com;

 	location / {
 	proxy_pass http://mywebroundrobin3;
 	}
}

server {
 	listen 80;
 	server_name leastconnection.granz.channel.f11.com;

 	location / {
 	proxy_pass http://mywebleastconnection;
 	}
}

server {
 	listen 80;
 	server_name iphash.granz.channel.f11.com;

 	location / {
 	proxy_pass http://mywebiphash;
 	}
}

server {
 	listen 80;
 	server_name generichash.granz.channel.f11.com;

 	location / {
 	proxy_pass http://mywebgenerichash;
 	}
}
' > /etc/nginx/sites-available/granz.channel.f11.com

ln -s /etc/nginx/sites-available/granz.channel.f11.com /etc/nginx/sites-enabled
service nginx restart
