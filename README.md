### Connect to your intance using ssh dynamic port
ssh -i "devops_key.pem" -D 8899 ubuntu@<your_public_dns>

# Connect HTTP server:
python3 -m http.server

### Connect to your intance using ssh remote port forwarding
ssh -i "devops_key.pem" -R 9090:localhost:8000 ubuntu@<your_public_dns>

 