module "vpc" {
    # source = "../../terraform-aws-vpc"
    source = "git::https://github.com/nirupamanne/terraform-aws-vpc.git?ref=main"
    project = var.project
    environment = var.environment
}