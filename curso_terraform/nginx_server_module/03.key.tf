resource "aws_key_pair" "nginx-server-ssh" {
    # ssh-keygen -t rsa -b 2048 -f "nginx-server.key"
    key_name = "${var.server_name}-ssh"
    public_key = file("${var.server_name}.key.pub")

    tags = {
        Name = "${var.server_name}-ssh"
        Environment = var.environment
        Owner = var.owner
        Team = var.team
        Project = var.project
    }
}