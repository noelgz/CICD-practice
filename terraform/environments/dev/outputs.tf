output "aws_account_id" {
  description = "AWS account where the environment is deployed."
  value       = data.aws_caller_identity.current.account_id
}

output "environment" {
  description = "Current deployment environment."
  value       = var.environment
}

output "name_prefix" {
  description = "Common prefix used to name AWS resources."
  value       = local.name_prefix
}

output "artifacts_bucket_name" {
  description = "Nombre del bucket de artifacts"
  value       = module.artifacts_bucket.bucket_name
}

output "artifacts_bucket_arn" {
  description = "ARN del bucket de artifacts"
  value       = module.artifacts_bucket.bucket_arn
}

# SQS QUEUE
output "events_queue_name" {
  description = "Nombre de la cola de eventos."
  value       = module.events_queue.queue_name
}

output "events_queue_arn" {
  description = "ARN de la cola de eventos."
  value       = module.events_queue.queue_arn
}

output "events_queue_url" {
  description = "URL de la cola de eventos."
  value       = module.events_queue.queue_url
}

output "events_dead_letter_queue_name" {
  description = "Nombre de la Dead Letter Queue."
  value       = module.events_queue.dead_letter_queue_name
}

output "events_dead_letter_queue_arn" {
  description = "ARN de la Dead Letter Queue."
  value       = module.events_queue.dead_letter_queue_arn
}