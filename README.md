## Resource explanation
Provider Configuration: Configures AWS as the provider using a variable (var.aws_region) for flexible and reusable region settings.

S3 Bucket Creation: Creates an S3 bucket with a variable (var.s3_bucket_name) for easy customization and reuse, ensuring high durability and scalability.

Server-Side Encryption: Enables AES256 server-side encryption for the S3 bucket, ensuring data security and compliance by default.

HTTPS Enforcement Policy: Attaches a policy to the S3 bucket enforcing HTTPS, protecting data in transit by denying insecure requests.

S3 Backend Configuration: Configures Terraform to use an S3 bucket for storing the state file, specified directly in the backend block. This setup centralizes the state management, enhances collaboration, and maintains a consistent source of truth. Additionally, DynamoDB is used for state locking to prevent concurrent state modifications, ensuring stability and reliability.

Key Points:
Security: Emphasizes encryption at rest and in transit.
Modularity and Reusability: Uses variables to promote best practices in infrastructure as code.
State Management: Utilizes an S3 backend with DynamoDB for secure and reliable state management.
This configuration highlights a strong focus on security, flexibility, and best practices in cloud infrastructure management, ensuring both data protection and efficient state handling.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.67.0 |

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
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | The AWS region to create resources in | `string` | n/a | yes |
| <a name="input_s3_bucket_name"></a> [s3\_bucket\_name](#input\_s3\_bucket\_name) | The name of the S3 bucket | `string` | n/a | yes |

## Outputs

No outputs.


## Docker and Helm Chart Explanation Summary
Dockerfile:

Base Image: Uses the official Python 3.9 slim image.
Working Directory: Sets the working directory to /app.
Copy Files: Copies the current directory contents into the container.
Install Dependencies: Installs Flask using requirements.txt.
Expose Port: Exposes port 5000.
Run Application: Runs app.py when the container launches.
requirements.txt:

Lists the Python dependencies, specifically Flask (Flask==2.0.3).
Helm Chart:

Chart.yaml: Contains metadata about the Helm chart, including name, description, and version.
values.yaml: Defines default configuration values for the image repository, tag, service type, and ingress settings.
templates/deployment.yaml: Defines the Kubernetes Deployment, specifying the number of replicas, container image, and environment variables.
templates/service.yaml: Defines the Kubernetes Service to expose the application, with configurable service type and port.
This setup containerizes a Flask application using Docker and provides a Helm chart for deploying the Docker image to a Kubernetes cluster, ensuring a consistent and scalable deployment process.

Access: Application available at https://evolve.tamisbaj.com/.







