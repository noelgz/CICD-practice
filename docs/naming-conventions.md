# Naming conventions

## AWS resource names

Physical AWS resource names use this structure:

```text
<organization>-<project>-<environment>-<resource>-<purpose>
```

Globally unique resources can append the AWS account ID and Region:

```text
<organization>-<project>-<environment>-<resource>-<purpose>-<account-id>-<region>
```

### Standard values

| Category | Value | Meaning |
| --- | --- | --- |
| Organization | `ctl` | Coco Tech Labs |
| Environment | `dev` | Development |
| Environment | `uat` | User acceptance testing |
| Environment | `prod` | Production |

Do not introduce aliases such as `development`, `prd`, or `production` in
resource names.

### Resource codes

| AWS resource | Code |
| --- | --- |
| Amazon S3 bucket | `s3` |
| AWS Lambda function | `lmb` |
| Amazon SQS queue | `sqs` |
| Dead-letter queue | `dlq` |
| Amazon DynamoDB table | `ddb` |
| IAM role | `role` |
| IAM policy | `policy` |
| AWS KMS key | `kms` |
| AWS Secrets Manager secret | `secret` |
| CloudWatch log group | `logs` |
| CloudWatch alarm | `alarm` |
| Amazon ECS cluster | `ecs` |
| Amazon ECS service | `ecs` |
| Amazon ECS task definition | `ecs` |
| Security group | `sg` |
| VPC endpoint | `vpce` |

Examples:

```text
ctl-cicdp-dev-lmb-file-processor
ctl-cicdp-uat-sqs-file-events
ctl-cicdp-prod-ecs-cluster-main
ctl-cicdp-prod-ecs-service-api
ctl-cicdp-prod-ecs-task-api
```

## Terraform identifiers

Terraform identifiers use descriptive `snake_case` names. Do not repeat
information that is already expressed by the Terraform resource type.

```hcl
resource "aws_lambda_function" "file_processor" {
  function_name = "ctl-cicdp-dev-lmb-file-processor"
}
```

Use `aws_lambda_function.file_processor`, not a duplicated identifier such as
`aws_lambda_function.ctl_cicdp_dev_lmb_file_processor`.

## Mandatory tags

Tag keys and accepted values must remain consistent across resources:

```text
Application
Environment
ManagedBy
Repository
Owner
DataClassification
```

Tags must not contain credentials, personal data, or other sensitive values.
