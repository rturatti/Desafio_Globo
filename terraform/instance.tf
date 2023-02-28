resource "tls_private_key" "pk" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "kp" {
  key_name   = "${var.project_name}-key"
  public_key = tls_private_key.pk.public_key_openssh

  provisioner "local-exec" {
    command = "echo '${tls_private_key.pk.private_key_pem}' > ./${var.project_name}-key.pem"
  }
}

resource "aws_s3_bucket_object" "this" {
  bucket = "ct-terraformstate"
  key    = "${var.project_name}-key.pem"
  content = tls_private_key.pk.private_key_pem
}

resource "aws_instance" "this" {
  ami                         = local.ami_id
  instance_type               = local.instance_type
  disable_api_termination     = "false"
  key_name                    = aws_key_pair.kp.key_name
  user_data                   = file("user-data.sh")
  vpc_security_group_ids      = [module.api_service_sg.security_group_id]
  subnet_id                   = module.vpc.public_subnets[0]
  associate_public_ip_address = "true"
  tags                        = merge(local.common_tags, { Name = "${var.project_name}-api" })
}

output "External_IP" {
  value = aws_instance.this.public_ip
}