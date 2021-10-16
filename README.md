# terraform-aws-ecr-repository
A Terraform module for an AWS Elastic Container Registry (ECR) repository, with an associated repository policy

# Terraform Docs

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ecr_repository.repo](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository) | resource |
| [aws_ecr_repository_policy.repo_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_image_tag_mutability"></a> [image\_tag\_mutability](#input\_image\_tag\_mutability) | Whether changes can be pushed to existing tags on images in this repository (MUTABLE or IMMUTABLE) | `string` | `"MUTABLE"` | no |
| <a name="input_kms_key"></a> [kms\_key](#input\_kms\_key) | The arn of a KMS key that will be used to encrypt the contents of the repository | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the repository | `string` | n/a | yes |
| <a name="input_read_principals"></a> [read\_principals](#input\_read\_principals) | ARNs of principals that are allowed to pull from this repository. Only used if use\_repository\_policy == true | `list(string)` | `[]` | no |
| <a name="input_readwrite_principals"></a> [readwrite\_principals](#input\_readwrite\_principals) | ARNs of principals that are allowed to push and pull to/ from this repository. Only used if use\_repository\_policy == true | `list(string)` | `[]` | no |
| <a name="input_scan_on_push"></a> [scan\_on\_push](#input\_scan\_on\_push) | Whether or not to scan images for vulnerabilities as they are uploaded to the repository | `bool` | `true` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to assign to the repository | `map(string)` | `{}` | no |
| <a name="input_use_repository_policy"></a> [use\_repository\_policy](#input\_use\_repository\_policy) | Whether or not to assign a repository policy to this repository, allowing granular access management | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_image_tag_mutability"></a> [image\_tag\_mutability](#output\_image\_tag\_mutability) | The provided value for var.image\_tag\_mutability |
| <a name="output_kms_key"></a> [kms\_key](#output\_kms\_key) | The provided value for var.kms\_key |
| <a name="output_name"></a> [name](#output\_name) | The provided value for var.name |
| <a name="output_read_principals"></a> [read\_principals](#output\_read\_principals) | The provided value for var.read\_principals |
| <a name="output_readwrite_principals"></a> [readwrite\_principals](#output\_readwrite\_principals) | The provided value for var.readwrite\_principals |
| <a name="output_repository"></a> [repository](#output\_repository) | The repository object itself |
| <a name="output_repository_policy"></a> [repository\_policy](#output\_repository\_policy) | The repository policy used to manage access to this repository |
| <a name="output_scan_on_push"></a> [scan\_on\_push](#output\_scan\_on\_push) | The provided value for var.scan\_on\_push |
| <a name="output_tags"></a> [tags](#output\_tags) | Tags assigned to the repository |
| <a name="output_use_repository_policy"></a> [use\_repository\_policy](#output\_use\_repository\_policy) | The provided value for var.use\_repository\_policy |
