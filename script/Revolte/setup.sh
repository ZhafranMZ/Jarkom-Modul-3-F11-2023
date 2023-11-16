echo 'nameserver 192.168.122.1' > /etc/resolv.conf

apt-get update
apt-get install apache2-utils lynx jq -y

echo 'nameserver 10.57.1.2' > /etc/resolv.conf

echo '
{
  "username": "kelompokF11",
  "password": "passwordF11"
}' > /root/account.json