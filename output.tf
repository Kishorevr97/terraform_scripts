output instance_public_ip {
        description = "public and private ip of EC2 instace"
        value = aws_instance.demo.public_ip
}
