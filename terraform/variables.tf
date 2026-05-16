#################################
# AWS Provider
#################################

variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-southeast-2"
}

#################################
# VPC
#################################

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "12.0.0.0/16"
}

variable "vpc_name" {
  description = "VPC name"
  type        = string
  default     = "bookmyshow-vpc"
}

#################################
# Subnets
#################################

variable "public_subnet_cidrs" {
  description = "Public subnet CIDR blocks"
  type        = list(string)
  default     = [
    "12.0.1.0/24",
    "12.0.2.0/24"
  ]
}

variable "private_subnet_cidrs" {
  description = "Private subnet CIDR blocks"
  type        = list(string)
  default     = [
    "12.0.3.0/24",
    "12.0.4.0/24"
  ]
}

variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)
  default     = [
    "ap-southeast-2a",
    "ap-southeast-2b"
  ]
}

#################################
# Internet Gateway & Route Table
#################################

variable "public_route_cidr" {
  description = "CIDR block for internet access"
  type        = string
  default     = "0.0.0.0/0"
}

#################################
# Security Groups
#################################

variable "alb_ingress_ports" {
  description = "Ingress ports for ALB"
  type        = list(number)
  default     = [80, 443]
}

variable "ec2_ingress_ports" {
  description = "Ingress ports for EC2 instances"
  type        = list(number)
  default     = [8080, 22]
}

#################################
# ALB
#################################

variable "alb_name" {
  description = "Application Load Balancer name"
  type        = string
  default     = "bookmyshow-alb"
}

#################################
# EC2 / ASG
#################################

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
}

variable "key_name" {
  description = "EC2 key pair name"
  type        = string
}

variable "desired_capacity" {
  description = "Desired number of EC2 instances"
  type        = number
  default     = 2
}

variable "min_size" {
  description = "Minimum ASG size"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "Maximum ASG size"
  type        = number
  default     = 4
}

#################################
# Tags
#################################

variable "common_tags" {
  description = "Common tags for all AWS resources"
  type        = map(string)
  default = {
    Project     = "BookMyShow"
    Environment = "dev"
    Terraform   = "true"
  }
}
