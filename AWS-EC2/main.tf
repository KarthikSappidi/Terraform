resource "aws_security_group" "security-group" {
    name = "security-group"
    description = "security group allowing ports 22,443,9000,8080,80"

    tags = {
      Name = "security-group"
      Environment = "Production"
    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 9000
        to_port = 9000
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 8080
        to_port = 8080
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]    
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_instance" "zomato" {
    ami = "ami-007020fd9c84e18c7"
    instance_type = "t2.medium"
    key_name = "888888"
    security_groups = [aws_security_group.security-group.id]
    user_data = templatefile("./userdata.sh", {})

    tags = {
      Name = "zomato"
    }
    root_block_device {
      volume_size = 30
    }
}
