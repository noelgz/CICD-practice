variable "aws_region" {
  description = "AWS region where resources will be deployed."
  type        = string
}

variable "organization_code" {
  description = "Short code that identifies the organization."
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9]+$", var.organization_code))
    error_message = "The organization code must contain only lowercase letters and numbers."
  }
}

variable "project_code" {
  description = "Short code that identifies the project."
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9]+$", var.project_code))
    error_message = "The project code must contain only lowercase letters and numbers."
  }
}

variable "environment" {
  description = "Deployment environment."
  type        = string

  validation {
    condition     = contains(["dev", "stage", "prod"], var.environment)
    error_message = "The environment must be dev, stage, or prod."
  }
}