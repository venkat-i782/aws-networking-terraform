data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

module "dev_vpc" {
    source = "../../../modules/vpc"
    vpc_name              = "${var.environment}-vpc"

    environment           = "dev"
    vpc_cidr           = "10.0.0.0/16"
    availability_zones   = ["${data.aws_region.current.name}a", "${data.aws_region.current.name}b", "${data.aws_region.current.name}c"]
    public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
    private_subnet_cidrs = ["10.0.10.0/24", "10.0.11.0/24", "10.0.12.0/24"]
    tags = {
        Environment = var.environment
        Owner       = data.aws_caller_identity.current.arn
        ManagedBy    = "Terraform"
        Project      = "Networking"
    }
}