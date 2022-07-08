provider "aws" {
  region = "eu-central-1"
}


resource "aws_instance" "Apach" {
  ami                    = "ami-02584c1c9d05efa69"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.Jenkins-security_group.id]
  key_name               = "key_jenk_aws"

  tags = {
    Name    = "Apache"
    Owner   = "DevOps Student"
    Project = "CI/CD pipeline"
  }

}
resource "aws_security_group" "Jenkins-security_group" {
  egress {
    cidr_blocks = ["0.0.0.0/0", ]
    description = ""
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0", ]
    description = ""
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0", ]
    description = ""
    from_port   = 8080
    protocol    = "tcp"
    to_port     = 8080
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0", ]
  }
}
data "aws_eip" "by_public_ip" {
  public_ip = "35.156.108.186"
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.Apach.id
  allocation_id = data.aws_eip.by_public_ip.id
}
resource "aws_key_pair" "deployer" {
  key_name   = "key_jenk_aws"
  public_key = tls_private_key.rsa.public_key_openssh
}

resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
resource "local_file" "TF-key" {
  content         = tls_private_key.rsa.private_key_pem
  filename        = "/var/lib/jenkins/.ssh/tf-key"
  file_permission = "400"
}
