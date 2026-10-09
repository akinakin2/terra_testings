variable "aws_profile" {
  description = "AWS CLI profile to use for authentication."
  type        = string
  default     = "default"
}

variable "aws_region" {
  description = "AWS region for the VPC resources."
  type        = string
  default     = "us-east-2"
}

variable "environment" {
  description = "Environment name used in resource tagging."
  type        = string
  default     = "prod"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet."
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet."
  type        = string
  default     = "10.0.2.0/24"
}

variable "availability_zones" {
  description = "Availability zones to use for public and private subnets."
  type        = list(string)
  default     = ["us-east-2a", "us-east-2b"]
}

variable "allowed_ssh_cidrs" {
  description = "CIDR blocks allowed to reach SSH on the public subnet. Restrict this to trusted admin networks."
  type        = list(string)
  default     = ["203.0.113.10/32"]
}

variable "allowed_http_cidrs" {
  description = "CIDR blocks allowed to reach HTTP on the public subnet."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
# The configured SSH range, 203.0.113.10/32, is a documentation-only address, not a usable admin IP. Replace it with your actual trusted CIDR before deploying.

variable "allowed_https_cidrs" {
  description = "CIDR blocks allowed to reach HTTPS on the public subnet."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
