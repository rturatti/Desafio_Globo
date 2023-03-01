module "api_service_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "${var.project_name}-api-service"
  description = "Security group for API service"
  vpc_id      = module.vpc.vpc_id

  ingress_with_cidr_blocks = [
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      description = "API-service ports"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 9443
      to_port     = 9443
      protocol    = "tcp"
      description = "HTTPS Portainer"
      cidr_blocks = "0.0.0.0/0"
    }
  ]
  egress_rules = ["all-all"]
  tags         = local.common_tags
}