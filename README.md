## Resource Explanation
Provider Configuration
The provider block configures AWS as the provider, specifying the region where resources will be deployed. By using a variable (var.aws_region), the configuration is made flexible and reusable across different AWS regions.

S3 Bucket Creation
The aws_s3_bucket resource creates an S3 bucket using a variable for the bucket name (var.s3_bucket_name). This ensures easy customization and reuse of the configuration. S3 buckets offer high durability and scalability, providing a reliable storage solution.

Server-Side Encryption
The aws_s3_bucket_server_side_encryption_configuration resource enables server-side encryption using the AES256 algorithm. This ensures that all objects stored in the bucket are encrypted at rest, enhancing data security and compliance with industry standards. Encryption is applied by default to simplify user and application interactions.

HTTPS Enforcement Policy
The aws_s3_bucket_policy resource attaches a policy to the S3 bucket that enforces the use of HTTPS. This policy denies any requests that do not use secure transport, ensuring that all data transmitted to and from the bucket is encrypted in transit. This critical security measure protects data from being intercepted or tampered with during transfer.

Key Points
Security: Emphasizes encryption at rest and in transit, demonstrating a strong focus on data protection.
Modularity and Reusability: Uses variables for configuration flexibility, promoting best practices in infrastructure as code.


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
