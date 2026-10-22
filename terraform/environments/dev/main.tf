data "aws_caller_identity" "current" {}

module "artifacts_bucket" {
  source = "../../modules/s3-bucket"

  bucket_name = local.artifacts_bucket_name
}

module "events_queue" {
  source = "../../modules/sqs-queue"

  queue_name             = local.events_queue_name
  dead_letter_queue_name = local.events_dead_letter_queue_name

  tags = {
    Component = "messaging"
    Purpose   = "events"
  }
}