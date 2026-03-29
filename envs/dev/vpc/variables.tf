variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
}
variable "project_name" {
  description = "Name of the project for tagging"
  type        = string
}
variable "environment" {
  description = "Deployment environment (e.g., dev, staging, prod)"     
    type        = string   
}