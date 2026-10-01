locals {
  name_prefix = join("-", [
    var.organization_code,
    data.aws_caller_identity.current.account_id,
    var.project_code
  ])

  artifacts_bucket_name = join("-", [
    local.name_prefix,
    "s3",
    "artifacts",
    var.environment
  ])

  common_tags = {
    Application        = var.project_code
    Environment        = var.environment
    ManagedBy          = "terraform"
    Repository         = "noelgz/CICD-practice"
    Owner              = "platform-engineering"
    DataClassification = "internal"
  }
}