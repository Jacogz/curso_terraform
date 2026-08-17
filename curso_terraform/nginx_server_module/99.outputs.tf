output "nginx-server-public-ip" {
    description = "Public IP address of the Nginx server"
    value = aws_instance.nginx-server.public_ip
}

output "nginx-server-public-dns" {
    description = "Public DNS of the Nginx server"
    value = aws_instance.nginx-server.public_dns
}