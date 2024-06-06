provider "aws" {
  region = var.region
}

resource "aws_security_group" "app_sg" {
  name        = "app_security_group"
  description = "Allow inbound traffic on port 3000"
  vpc_id      = var.vpc_id  # Ensure you have a VPC ID variable defined

  ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "app" {
  ami           = var.ami_id
  instance_type = var.instance_type
  security_groups = [aws_security_group.app_sg.name]

  tags = {
    Name = var.instance_name
  }

  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update
              sudo apt-get install -y docker.io
              sudo docker run -d -p 80:3000 t2s-node-app
              EOF
}

