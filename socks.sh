#!/bin/bash

echo -e "Please enter your pass: "
read pass

echo pass

curl -LGO https://raw.githubusercontent.com/artembayguzhin/files/main/dante.sh
chmod 777 dante.sh
sudo ./dante.sh
sudo /etc/init.d/sockd adduser $pass $pass
echo 'net.ipv4.icmp_echo_ignore_all = 1' | sudo tee -a /etc/sysctl.conf
sudo sysctl -p
