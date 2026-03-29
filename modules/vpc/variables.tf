variable "vpc_cidr" {
    description = "CIDR block for the VPC"
    type        = string
    default     = "10.0.0.0/16"
}

variable "vpc_name" {
    description = "Name of the VPC"
    type        = string
}

variable "enable_dns_hostnames" {
    description = "Enable DNS hostnames in the VPC"
    type        = bool
    default     = true
}

variable "enable_dns_support" {
    description = "Enable DNS support in the VPC"
    type        = bool
    default     = true
}

variable "tags" {
    description = "Tags to apply to the VPC"
    type        = map(string)
    default     = {}
}
variable "environment" {
  description = "AWS app env"
}
variable "availability_zones" {
  description = "List of availability zones for subnets"
  type        = list(string)
}
variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
}
variable "private_subnet_cidrs" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
}