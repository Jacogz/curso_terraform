variable "ami_id" {
    description = "The AMI ID to use for the EC2 instance"
    default = "ami-0440d3b780d96b29d"
}

variable "instance_type" {
    description = "The type of instance to use"
    default = "t3.micro"
}

variable "server_name" {
    description = "The name of the server"
    default = "nginx-server"
}

variable "environment" {
    description = "The environment for the server"
    default = "test"
}

variable "owner" {
    description = "The owner of the server"
    default = "jgiraldoz@eafit.edu.co"
}

variable "team" {
    description = "The team responsible for the server"
    default = "DevOps"
}

variable "project" {
    description = "The project associated with the server"
    default = "Curso Terraform"
}