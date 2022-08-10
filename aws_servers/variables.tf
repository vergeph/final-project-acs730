variable "instance_type" {
  default = {
    "staging" = "t3.small"
    "dev"     = "t3.micro"
    "prod"    = "t3.medium"
  }
  description = "Type of the instance"
  type        = map(string)
}


#variable "instance_type" {
#  default = "t2.micro"
#}

#variable "ami" {
#  type = map(string)

#  default = {
#    "amazon" = "amzn2-ami-hvm-*-x86_64-gp2"
#    "ubuntu" = "ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"
#  }
#}

variable "vpc_id" {
  default = "vpc-0b9ba2a844f61a67e"
  type    = string
}


# Provision public subnets in custom VPC
variable "security_groups" {
  default     = ["sg-0f4b2f2728806552c", "sg-0f4b2f2728806554c"]
  type        = list(string)
  description = "Public Subnet CIDRs"
}

# VPC CIDR range
variable "public_subnet_ids" {
  default     = ["subnet-0307e38bbe6503822", "subnet-0307e38bbe6503824", "subnet-0307e38bbe6503826"]
  type        = list(string)
  description = "VPC to host static web site"
}

variable "private_subnet_ids" {
  default     = ["subnet-0307e38bbe6503822", "subnet-0307e38bbe6503824", "subnet-0307e38bbe6503826"]
  type        = list(string)
  description = "VPC to host static web site"
}

# Default tags
variable "default_tags" {
  default = {
    "Owner" = "Khryu"
    "App"   = "Web"
  }
  type        = map(any)
  description = "Default tags to be appliad to all AWS resources"
}

# Prefix to identify resources
variable "prefix" {
  default     = "final-project"
  type        = string
  description = "Name prefix"
}


# Variable to signal the current environment 
variable "env" {
  default     = "test"
  type        = string
  description = "Deployment Environment"
}

variable "path_to_linux_key" {
  default     = "/home/ec2-user/.ssh/linux.pub"
  description = "Path to the public key to use in Linux VMs provisioning"
  type        = string
}


