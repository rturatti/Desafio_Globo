locals {
  ami_id        = var.ami_id
  instance_type = var.instance_type
  common_tags = {
    Terraform   = "true"
    Projeto     = "${var.project_name}"
    Responsavel = "${var.responsavel}"
    Data        = "stringformat('%d-%m-%Y', timestamp())"
  }
}