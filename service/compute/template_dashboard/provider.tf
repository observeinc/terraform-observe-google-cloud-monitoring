provider "aws" {
  alias   = "sockshop"
  region  = "us-west-2"
  profile = "sockshop"
}

provider "observe" {
  customer      = var.observe_customer_id
  domain        = var.observe_domain
  user_email    = var.user_email
  user_password = data.aws_secretsmanager_secret_version.secret.secret_string
}

data "aws_secretsmanager_secret" "secret" {
  provider = aws.sockshop
  name     = format("tf-password-%s-%s", var.observe_domain, var.observe_customer_id)
}

data "aws_secretsmanager_secret_version" "secret" {
  provider  = aws.sockshop
  secret_id = data.aws_secretsmanager_secret.secret.id
}

provider "google" {
  project = local.cloud_project_id
  region  = local.region
}
