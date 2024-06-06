# Inputting our variables

variable "region" {
  description = "The AWS region to deploy in"
  type        = string
  default     = "us-east-1"
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "ami_id" {
  description = "The AMI ID for the instance"
  type        = string
  default     = "ami-0c55b159cbfafe1f0"
}

variable "instance_type" {
  description = "The instance type to use"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "The name tag for the instance"
  type        = string
  default     = "t2s-node-app"
}