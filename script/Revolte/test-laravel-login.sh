ab -n 100 -c 10 -p /root/account.json -T application/json http://10.57.4.4:8000/api/auth/login

curl -X POST -H "Content-Type: application/json" -d @account.json http://10.57.4.4:8000/api/auth/login | jq -r '.token' > /tmp/.token