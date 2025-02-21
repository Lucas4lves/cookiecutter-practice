resource "aws_ecr_repository" "ecr-repo-default" {
  name                 = "{{ cookiecutter.ecr_repo_name }}"
  image_tag_mutability = "MUTABLE"

  tags = {
    environment = var.environment
    productname = var.productname
    iac         = var.iac 
    centercost  = var.centercost
    teamname    = var.teamname
  }

  image_scanning_configuration {
    scan_on_push = true
  }
}