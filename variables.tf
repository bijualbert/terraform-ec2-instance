# Define variables
variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  default     = "ami-0c55b159cbfafe1f0"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "port" {
  description = "Port for security group"
  default     = 80
}