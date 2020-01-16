variable "sfx_token" {
  description = "Your SignalFx token"
}

provider "signalfx" {
  auth_token = var.sfx_token
}

module "aws_alb" {
  source = "./aws_alb"
}

module "aws_api_gateway" {
  source = "./aws_api_gateway"
}

module "aws_asg" {
  source = "./aws_asg"
}

module "aws_cloudfront" {
  source = "./aws_cloudfront"
}

module "aws_dynamodb" {
  source = "./aws_dynamodb"
}

module "aws_ebs" {
  source = "./aws_ebs"
}

module "aws_ec2" {
  source = "./aws_ec2"
}

module "aws_ecs" {
  source = "./aws_ecs"
}

module "aws_elasticache" {
  source = "./aws_elasticache"
}

module "aws_elb" {
  source = "./aws_elb"
}

module "aws_kinesis_analytics" {
  source = "./aws_kinesis_analytics"
}

module "aws_kinesis_streams" {
  source = "./aws_kinesis_streams"
}

module "aws_rds_enhanced" {
  source = "./aws_rds_enhanced"
}

module "aws_rds_enhanced_aurora" {
  source = "./aws_rds_enhanced_aurora"
}
