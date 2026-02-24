resource "aws_instance" "example" {
  count = 10
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = var.instances[count.index]
    project = "roboshop"
  }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_all_roboshop"
  description = "Allow TLS inbound traffic and all outbound traffic"

   # Ingress rules for HTTP/HTTPS
 ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Egress (outbound) rule (Optional, as default egress allows all)
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow-all-terraform"
    project = "roboshop"
  }
}
