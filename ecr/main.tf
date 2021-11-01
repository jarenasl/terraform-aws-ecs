provider "aws" {
  region = "eu-west-3"
}

resource "aws_ecr_repository" "ecr_repo" {
  name = "kantox_repo" # Naming my repository
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}