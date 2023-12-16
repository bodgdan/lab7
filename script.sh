#!/bin/bash
apt update -y
apt install apache2 -y

sed -i 's/GatewayPorts no/GatewayPorts yes/' /etc/ssh/sshd_config
sed -i 's/#GatewayPorts yes/GatewayPorts yes/' /etc/ssh/sshd_config

systemctl restart ssh

aws ec2 authorize-security-group-ingress --group-id sg-0807e541176cec6f3 --protocol tcp --port 9090 --cidr 0.0.0.0/0
