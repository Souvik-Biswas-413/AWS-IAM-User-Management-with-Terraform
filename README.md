# AWS-IAM-User-Management-with-Terraform
This demo demonstrates how to manage AWS IAM users, groups, and group memberships using Terraform and a CSV file as the data source. It's an AWS equivalent of Azure AD user management.

What Gets Created
26 IAM Users with console access
3 IAM Groups (Education, Managers, Engineers)
Group Memberships based on user attributes
User Tags with metadata (DisplayName, Department, JobTitle)

1. Create S3 Backend Bucket
   aws s3 mb s3://my-terraform-state-bucket-piyushsachdeva --region us-east-1
    aws s3api put-bucket-versioning --bucket my-terraform-state-bucket-piyushsachdeva --versioning-configuration Status=Enabled

2. Initialize Terraform
   terraform init

3. Review Changes
   terraform plan

4. Apply Configuration
   terraform apply -auto-approve

5. Clean up
   terraform destroy --auto-approve
