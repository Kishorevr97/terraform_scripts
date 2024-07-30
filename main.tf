provider "aws" {
  region     = var.aws_region
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "demo" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "tera-kish-demo"
  }
  provisioner "local-exec" {
    command = "echo private Ip address ${aws_instance.demo.private_ip}"
  }
 }
