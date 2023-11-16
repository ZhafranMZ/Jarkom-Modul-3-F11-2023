curl -X POST -H "Content-Type: application/json" -d @account.json http://10.57.4.4:8000/api/auth/login | jq -r '.token' > /tmp/.token
#curl -H "Authorization: Bearer $(cat /tmp/.token)" -H "Content-Type: application/json" http://10.57.4.4:8000/api/me

ab -n 100 -c 10 -H "Authorization: Bearer $(cat /tmp/.token)" http://10.57.4.4:8000/api/me