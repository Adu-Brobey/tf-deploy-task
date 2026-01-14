variable "environment" {
  description = "Environment name (dev/prod)"
  type        = string
  default     = "dev"
  validation {
    condition     = contains(["dev", "prod"], var.environment)
    error_message = "Environment must be either 'dev' or 'prod'"
  }
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "eu-west-2"
}

variable "instance_count" {
  description = "Number of EC2 instances to create"
  type        = number
  default     = 3
}

variable "instance_type" {
  description = "EC2 instance type based on environment"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for instances"
  type        = string
  default     = "ami-0500f74cc2b89fb6b"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/24"
}

variable "subnet_cidr" {
  description = "CIDR block for subnet"
  type        = string
  default     = "10.0.0.0/28"
}

variable "availability_zone" {
  description = "Availability zone"
  type        = string
  default     = "eu-west-2c"
}

variable "tags" {
  description = "Common tags for all resources"
  type        = map(string)
  default = {
    Project     = "WebApp"
    ManagedBy   = "Terraform"
    Environment = "dev"
  }
}
