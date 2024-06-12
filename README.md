## Resource Explanation
Provider Configuration: Configures AWS as the provider using a variable (var.aws_region) for flexible and reusable region settings.

S3 Bucket Creation: Creates an S3 bucket with a variable (var.s3_bucket_name) for easy customization and reuse, ensuring high durability and scalability.

Server-Side Encryption: Enables AES256 server-side encryption for the S3 bucket, ensuring data security and compliance by default.

HTTPS Enforcement Policy: Attaches a policy to the S3 bucket enforcing HTTPS, protecting data in transit by denying insecure requests.

Key Points:

Security: Emphasizes encryption at rest and in transit.
Modularity and Reusability: Uses variables to promote best practices in infrastructure as code.

## Requirements


| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.evolve_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_policy.evolve_bucket_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy) | resource |
| [aws_s3_bucket_server_side_encryption_configuration.evolve_bucket_encryption](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_provider_version"></a> [aws\_provider\_version](#input\_aws\_provider\_version) | The version of the AWS provider | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | The AWS region to create resources in | `string` | n/a | yes |
| <a name="input_s3_bucket_name"></a> [s3\_bucket\_name](#input\_s3\_bucket\_name) | The name of the S3 bucket | `string` | n/a | yes |

## Outputs

No outputs.
