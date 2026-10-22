output "queue_name" {
  description = "Nombre de la cola SQS principal."
  value       = aws_sqs_queue.this.name
}

output "queue_arn" {
  description = "ARN de la cola SQS principal."
  value       = aws_sqs_queue.this.arn
}

output "queue_url" {
  description = "URL de la cola SQS principal."
  value       = aws_sqs_queue.this.url
}

output "dead_letter_queue_name" {
  description = "Nombre de la Dead Letter Queue."
  value       = aws_sqs_queue.dead_letter.name
}

output "dead_letter_queue_arn" {
  description = "ARN de la Dead Letter Queue."
  value       = aws_sqs_queue.dead_letter.arn
}

output "dead_letter_queue_url" {
  description = "URL de la Dead Letter Queue."
  value       = aws_sqs_queue.dead_letter.url
}