resource "aws_key_pair" "nginx-server-ssh" {
    # ssh-keygen -t rsa -b 2048 -f "nginx-server.key"
    key_name = "nginx-server-ssh"
    public_key = file("nginx-server.key.pub")

    tags = {
        Name = "${var.server_name}-ssh"
        Environment = var.environment
        Owner = var.owner
        Team = var.team
        Project = var.project
    }
}