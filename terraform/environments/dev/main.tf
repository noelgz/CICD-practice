data "aws_caller_identity" "current" {}

module "artifacts_bucket" {
  source = "../../modules/s3-bucket"

  bucket_name = local.artifacts_bucket_name
}