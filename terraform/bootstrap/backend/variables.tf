variable "aws_region" {
  description = "AWS Region where the Terraform backend resources will be created."
  type        = string
  default     = "us-east-1"
}

variable "organization_code" {
  description = "Short code that identifies the organization."
  type        = string
  default     = "ctl"

  validation {
    condition     = can(regex("^[a-z0-9]+$", var.organization_code))
    error_message = "The organization code must contain only lowercase letters and numbers."
  }
}

variable "project_code" {
  description = "Short code that identifies the platform or project."
  type        = string
  default     = "platform"

  validation {
    condition     = can(regex("^[a-z0-9]+$", var.project_code))
    error_message = "The project code must contain only lowercase letters and numbers."
  }
}

variable "environment" {
  description = "Deployment environment."
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "stage", "prod"], var.environment)
    error_message = "The environment must be dev, stage, or prod."
  }
}