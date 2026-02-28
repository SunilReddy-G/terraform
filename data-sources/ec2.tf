resource "aws_instance" "example" {
  ami           = data.aws_ami.joindevops.id
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = "terraform"
    project = "roboshop"
  }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_all_traffic"
  description = "Allow tls inbound traffic and inbound traffic"

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

