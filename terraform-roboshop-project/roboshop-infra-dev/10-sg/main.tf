/* source "mongodb_sg" {
    source = "git::https://github.com/nirupamanne/Terraform.git//terraform-aws-sg?ref=main"
    project = var.project
    environment = var.environment
    sg_name = var.mongodb_sg_name
    vpc_id = local.vpc_id
}

source "redis_sg" {
    source = "git::https://github.com/nirupamanne/Terraform.git//terraform-aws-sg?ref=main"
    project = var.project
    environment = var.environment
    sg_name = var.redis_sg_name
    vpc_id = local.vpc_id
} */

module "sg" {
    count = length(var.sg_names)
    source = "git::https://github.com/nirupamanne/Terraform.git//terraform-aws-sg?ref=main"
    project = var.project
    environment = var.environment
    sg_name = replace(var.sg_names[count.index], "_", "-")
    vpc_id = local.vpc_id
} 