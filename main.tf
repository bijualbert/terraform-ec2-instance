# Define provider
provider "aws" {
  region = var.region
}

# Create EC2 instance
resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "example-instance"
  }
}

# Create security group
resource "aws_security_group" "example" {
  name_prefix = "example"
  ingress {
    from_port = var.port
    to_port   = var.port
    protocol  = "tcp"
    cidr_blocks = [
      "0.0.0.0/0"
    ]
  }
}

# Associate security group with EC2 instance
resource "aws_security_group_rule" "example_ingress" {
  security_group_id = aws_security_group.example.id
  type        = "ingress"
  from_port   = var.port
  to_port     = var.port
  protocol    = "tcp"
  cidr_blocks = [
    "0.0.0.0/0"
  ]
}