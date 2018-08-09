provider "aws" {
  region = "${var.aws_region}"
}

# Deploy Storage Resource
module "storage" {
  source       = "./storage"
  project_name = "${var.project_name}"
}


