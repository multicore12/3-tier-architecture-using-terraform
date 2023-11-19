# Define variables for the VPC
variable "region" {
  description = "AWS region to create VPC"
  default     = "us-east-1"
}

variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Name of the VPC"
  default     = "three-tier"
}

# Define variables for public subnets
variable "public_subnets_cidr_blocks" {
  description = "CIDR blocks of subnets in the public layer"
  default     = ["10.0.5.0/24", "10.0.7.0/24"]
}

# Define variables for web subnets
variable "web_subnets_cidr_blocks" {
  description = "CIDR blocks of subnets in the web layer"
  default     = ["10.0.1.0/24", "10.0.3.0/24"]
}

# Define variables for app subnets
variable "app_subnets_cidr_blocks" {
  description = "CIDR blocks of subnets in the app layer"
  default     = ["10.0.2.0/24", "10.0.4.0/24"]
}

# Define variables for DB subnets
variable "db_subnets_cidr_blocks" {
  description = "CIDR blocks of subnets in the DB layer"
  default     = ["10.0.6.0/24", "10.0.8.0/24"]
}

# Define variables for RDS
variable "rds_subnet_name" {
  description = "Name of the RDS subnet group"
  default     = "rds_group"
}

variable "rds_storage" {
  description = "RDS storage space"
  default     = "10"
}

variable "rds_engine" {
  description = "RDS engine type"
  default     = "mysql"
}

variable "rds_instance_class" {
  description = "RDS instance class"
  default     = "db.t2.micro"
}

variable "rds_name" {
  description = "Name of the RDS"
  default     = "my-rds-instance"
  
  validation {
    condition     = can(regex("^[a-z0-9-]+$", var.rds_name))
    error_message = "Invalid characters in the RDS name. Only lowercase alphanumeric characters and hyphens are allowed."
  }
}


variable "rds_username" {
  description = "Username of the RDS"
  default     = "mysql_terraform"
}

variable "rds_password" {
  description = "Password of the RDS"
  default     = "terraformrds"
}

# Define variables for web servers
variable "websg_name" {
  description = "Name of security group for webservers"
  default     = "webserver_sg"
}

variable "web_ami" {
  description = "AMI of webservers"
  default     = "ami-0fc5d935ebf8bc3bc"  
}

variable "web_instance" {
  description = "Instance type of webservers"
  default     = "t2.micro"
}

variable "webserver_name" {
  description = "Name of web servers"
  default     = ["web1", "web2"]
}

# Define variables for application servers
variable "appsg_name" {
  description = "Name of security group for application servers"
  default     = "appserver_sg"
}

variable "app_ami" {
  description = "AMI of application servers"
  default     = "ami-0fc5d935ebf8bc3bc"  
}

variable "app_instance" {
  description = "Instance type of application servers"
  default     = "t2.micro"
}

variable "app_server_name" {
  description = "Name of application servers"
  default     = ["app1", "app2"]
}

# Define variables for load balancer
variable "lb_name" {
  description = "Name of the application load balancer"
  default     = "applb"
}

variable "tg_name" {
  description = "Name of the application load balancer target group"
  default     = "applb-tg"
}

variable "tg_port" {
  description = "Port for the application load balancer target group"
  default     = "80"
}

variable "tg_protocol" {
  description = "Protocol for the application load balancer target group"
  default     = "HTTP"
}

variable "listener_port" {
  description = "Port for the application load balancer listener"
  default     = "443"
}

variable "listener_protocol" {
  description = "Protocol for the application load balancer listener"
  default     = "HTTP"
}

# Certificate ARN for HTTPS
variable "certificate_arn_user" {
  description = "Certificate ARN for HTTPS"
  default     = "#########"  
}
variable "presentation_tier_ami" {
  description = "The AMI ID for the presentation tier EC2 instances"
  type        = string
  # You can add additional constraints or defaults if needed
}

variable "s3_bucket_name" {
  description = "Name for the S3 bucket"
  type        = string
  default     = "my-s3-bucket"  
}