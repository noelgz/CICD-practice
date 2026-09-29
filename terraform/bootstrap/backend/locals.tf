locals {
  terraform_state_bucket_name = join("-", [
    var.organization_code,
    data.aws_caller_identity.current.account_id,
    var.project_code,
    "s3",
    "tfstate",
    var.environment
  ])

  common_tags = {
    Application        = "terraform-platform"
    Environment        = var.environment
    ManagedBy          = "terraform"
    Repository         = "noelgz/CICD-practice"
    Owner              = "platform-engineering"
    DataClassification = "internal"
  }
}