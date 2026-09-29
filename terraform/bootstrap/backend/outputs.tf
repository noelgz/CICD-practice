output "terraform_state_bucket_name" {
  description = "Name of the S3 bucket used to store Terraform state."
  value       = aws_s3_bucket.terraform_state.id
}

output "terraform_state_bucket_arn" {
  description = "ARN of the S3 bucket used to store Terraform state."
  value       = aws_s3_bucket.terraform_state.arn
}

output "aws_account_id" {
  description = "AWS account where the Terraform backend is created."
  value       = data.aws_caller_identity.current.account_id
}