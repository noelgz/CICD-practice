moved {
  from = aws_s3_bucket.artifacts
  to   = module.artifacts_bucket.aws_s3_bucket.this
}

moved {
  from = aws_s3_bucket_ownership_controls.artifacts
  to   = module.artifacts_bucket.aws_s3_bucket_ownership_controls.this
}

moved {
  from = aws_s3_bucket_public_access_block.artifacts
  to   = module.artifacts_bucket.aws_s3_bucket_public_access_block.this
}

moved {
  from = aws_s3_bucket_server_side_encryption_configuration.artifacts
  to   = module.artifacts_bucket.aws_s3_bucket_server_side_encryption_configuration.this
}

moved {
  from = aws_s3_bucket_versioning.artifacts
  to   = module.artifacts_bucket.aws_s3_bucket_versioning.this
}