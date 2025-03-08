provider "aws" {
  region = "us-east-1"  # Change this if needed
}

# Create a Security Group for EC2
resource "aws_security_group" "ec2_sg" {
  name        = "web_sg"
  description = "Allow inbound traffic"

  # Allow SSH access (Change CIDR to restrict access)
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow SSH access (Change CIDR to restrict access)
  ingress {
    from_port   = 30000
    to_port     = 30000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  # Allow web app traffic on ports 8081-8083
  ingress {
    from_port   = 8080
    to_port     = 8083
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create an EC2 Instance in a Public Subnet
resource "aws_instance" "web_server" {
  ami                    = "ami-01bf2bec1a52ce0e1"  # Amazon Linux 2 AMI
  instance_type          = "t3.medium"
  key_name               = "clo835-key"  # Replace with your AWS Key Pair name
  subnet_id              = "subnet-0770073b4d6754d85"  # Make sure this subnet is public and inside your VPC
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  root_block_device {
    volume_size = 50
    volume_type = "gp2"
  }
  tags = {
    Name = "CLO835-Web-Server"
  }
}

# Create Amazon ECR Repositories
resource "aws_ecr_repository" "webapp_repo" {
  name = "webapp-repo"
}

resource "aws_ecr_repository" "mysql_repo" {
  name = "mysql-repo"
}
