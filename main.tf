resource "aws_ecr_repository" "repo" {
  name                 = var.name
  image_tag_mutability = var.image_tag_mutability

  encryption_configuration {
    encryption_type = "KMS"
    kms_key         = var.kms_key
  }

  image_scanning_configuration {
    scan_on_push = var.scan_on_push
  }

  tags = merge(var.tags, {
    "Managed By Terraform" = "true"
  })
}

resource "aws_ecr_repository_policy" "repo_policy" {
  count = var.use_repository_policy ? 1 : 0

  repository = aws_ecr_repository.repo.name
  policy = templatefile("${path.module}/templates/repository-policy.json.tpl", {
    read_principals              = length(var.read_principals) == 1 ? jsonencode(var.read_principals.0) : jsonencode(var.read_principals)
    read_principals_enabled      = length(var.read_principals) > 0
    readwrite_principals         = length(var.readwrite_principals) == 1 ? jsonencode(var.readwrite_principals.0) : jsonencode(var.readwrite_principals)
    readwrite_principals_enabled = length(var.readwrite_principals) > 0
  })
}
