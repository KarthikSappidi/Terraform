# Terraform EC2 Instance with User Data
- This Terraform project automates the deployment of an EC2 instance on AWS along with custom user data.

## Usage
- Clone this repository: git clone <repository-URL>.
- Navigate to the project directory: cd AWS-EC2.
- Initialize Terraform: terraform init.
- Review and apply the changes: terraform plan and terraform apply.
- Access your EC2 instance via its public IP or DNS.

## Notes
- Ensure that you have valid AWS credentials configured locally (e.g., aws configure)
- Remember to manage your Terraform state securely, either remotely or locally.

# Terraform S3 Remote Backend
- This project sets up a remote backend in an AWS S3 bucket to store terraform statefiles.

## Usage
- Clone this repository: git clone <repository-URL>
- Navigate to the project directory: cd Backend-S3
- **Create S3 Bucket**: Initially, execute the Terraform script without the backend block to create the S3 bucket. This ensures that the bucket exists before configuring the remote backend.
- **AddBackendConfiguration**: Once the S3 bucket is created, add the backend block to the terraform configuration.
- **ReinitializeTerraform**: After adding the backend block, reinitialize Terraform to configure the remote backend.
- **ApplyChanges**:  Apply the changes again to ensure Terraform starts using the S3 bucket as the remote backend.

