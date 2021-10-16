variable "image_tag_mutability" {
  description = "Whether changes can be pushed to existing tags on images in this repository (MUTABLE or IMMUTABLE)"
  type        = string
  default     = "MUTABLE"
}

variable "kms_key" {
  description = "The arn of a KMS key that will be used to encrypt the contents of the repository"
  type        = string
  default     = null
}

variable "name" {
  description = "The name of the repository"
  type        = string
}

variable "read_principals" {
  description = "ARNs of principals that are allowed to pull from this repository. Only used if use_repository_policy == true"
  type        = list(string)
  default     = []
}

variable "readwrite_principals" {
  description = "ARNs of principals that are allowed to push and pull to/ from this repository. Only used if use_repository_policy == true"
  type        = list(string)
  default     = []
}

variable "scan_on_push" {
  description = "Whether or not to scan images for vulnerabilities as they are uploaded to the repository"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags to assign to the repository"
  type        = map(string)
  default     = {}
}

variable "use_repository_policy" {
  description = "Whether or not to assign a repository policy to this repository, allowing granular access management"
  type        = bool
  default     = true
}
