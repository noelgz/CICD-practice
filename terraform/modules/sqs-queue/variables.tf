variable "queue_name" {
  description = "Nombre de la cola SQS principal."
  type        = string

  validation {
    condition     = length(trimspace(var.queue_name)) > 0
    error_message = "queue_name no puede estar vacío."
  }
}

variable "dead_letter_queue_name" {
  description = "Nombre de la Dead Letter Queue."
  type        = string

  validation {
    condition     = length(trimspace(var.dead_letter_queue_name)) > 0
    error_message = "dead_letter_queue_name no puede estar vacío."
  }
}

variable "visibility_timeout_seconds" {
  description = "Tiempo durante el cual un mensaje procesado permanece invisible para otros consumidores."
  type        = number
  default     = 30

  validation {
    condition = (
      var.visibility_timeout_seconds >= 0 &&
      var.visibility_timeout_seconds <= 43200
    )
    error_message = "visibility_timeout_seconds debe estar entre 0 y 43200."
  }
}

variable "message_retention_seconds" {
  description = "Tiempo durante el cual SQS conserva los mensajes de la cola principal."
  type        = number
  default     = 345600

  validation {
    condition = (
      var.message_retention_seconds >= 60 &&
      var.message_retention_seconds <= 1209600
    )
    error_message = "message_retention_seconds debe estar entre 60 y 1209600."
  }
}

variable "dead_letter_queue_retention_seconds" {
  description = "Tiempo durante el cual la DLQ conserva los mensajes fallidos."
  type        = number
  default     = 1209600

  validation {
    condition = (
      var.dead_letter_queue_retention_seconds >= 60 &&
      var.dead_letter_queue_retention_seconds <= 1209600
    )
    error_message = "dead_letter_queue_retention_seconds debe estar entre 60 y 1209600."
  }
}

variable "max_receive_count" {
  description = "Cantidad de intentos antes de enviar un mensaje a la DLQ."
  type        = number
  default     = 5

  validation {
    condition = (
      var.max_receive_count >= 1 &&
      floor(var.max_receive_count) == var.max_receive_count
    )
    error_message = "max_receive_count debe ser un número entero mayor o igual a 1."
  }
}

variable "tags" {
  description = "Tags adicionales para las colas."
  type        = map(string)
  default     = {}
}