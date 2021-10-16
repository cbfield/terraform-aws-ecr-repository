output "image_tag_mutability" {
  description = "The provided value for var.image_tag_mutability"
  value       = var.image_tag_mutability
}

output "kms_key" {
  description = "The provided value for var.kms_key"
  value       = var.kms_key
}

output "name" {
  description = "The provided value for var.name"
  value       = var.name
}

output "read_principals" {
  description = "The provided value for var.read_principals"
  value       = var.read_principals
}

output "readwrite_principals" {
  description = "The provided value for var.readwrite_principals"
  value       = var.readwrite_principals
}

output "repository" {
  description = "The repository object itself"
  value       = aws_ecr_repository.repo
}

output "repository_policy" {
  description = "The repository policy used to manage access to this repository"
  value       = aws_ecr_repository_policy.repo_policy
}

output "scan_on_push" {
  description = "The provided value for var.scan_on_push"
  value       = var.scan_on_push
}

output "tags" {
  description = "Tags assigned to the repository"
  value = merge(var.tags, {
    "Managed By Terraform" = "true"
  })
}

output "use_repository_policy" {
  description = "The provided value for var.use_repository_policy"
  value       = var.use_repository_policy
}
