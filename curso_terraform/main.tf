terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = ">= 5.0"
        }
    }
}

provider "aws" {
    region = "us-east-1"
}

module "nginx_server_dev" {
    source = "./nginx_server_module"

    ami_id = "ami-0440d3b780d96b29d"
    instance_type = "t3.micro"
    server_name = "nginx-server-dev"
    environment = "dev"

}

module "nginx_server_qa" {
    source = "./nginx_server_module"

    ami_id = "ami-0440d3b780d96b29d"
    instance_type = "t3.micro"
    server_name = "nginx-server-qa"
    environment = "dev"

}

### Ouputs

output "nginx-dev-ip" {
    description = "Public IP address of the Nginx dev server"
    value = module.nginx_server_dev["nginx-server-public-ip"]
}

output "nginx-dev-dns" {
    description = "Public DNS of the Nginx dev server"
    value = module.nginx_server_dev["nginx-server-public-dns"]
}

output "nginx-qa-ip" {
    description = "Public IP address of the Nginx qa server"
    value = module.nginx_server_qa["nginx-server-public-ip"]
}

output "nginx-qa-dns" {
    description = "Public DNS of the Nginx qa server"
    value = module.nginx_server_qa["nginx-server-public-dns"]
}