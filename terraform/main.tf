terraform {
  required_version = ">= 1.6.0"
}

variable "project_name" {
  description = "Nombre del proyecto"
  type        = string
  default     = "cicd-practice"
}

variable "environment" {
  description = "Ambiente de ejecución"
  type        = string
  default="dev"
}

resource "terraform_data" "example" {
  input = {
    project     = var.project_name
    environment = var.environment
  }
}

output "project_information" {
  description = "Información del proyecto"
  value       = terraform_data.example.output
}