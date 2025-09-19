variable "aws_region" {
  description = "AWS region"
}

variable "key_name" {
  description = "AWS key pair name"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  # Ubuntu 22.04 LTS AMI for ap-south-1
  default = "ami-0f58b397bc5c1f2e8"
}
