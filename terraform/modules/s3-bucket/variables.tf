variable "bucket_name" {
  description = "Nombre del bucket S3"
  type        = string

  validation {
    condition     = length(var.bucket_name) >= 3 && length(var.bucket_name) <= 63
    error_message = "El nombre del bucket debe tener entre 3 y 63 caracteres."
  }
}

variable "tags" {
  description = "Tags adicionales para el bucket"
  type        = map(string)
  default     = {}
}