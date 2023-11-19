# 3-tier-architecture-using-terraform
Step 1: Install Terraform
Download and install Terraform from the official website: Terraform Downloads

Step 2: Set Up AWS Credentials
Make sure you have your AWS credentials configured. You can either set environment variables (AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY) or use the AWS CLI to configure your credentials.

Step 3: Write Terraform Configuration
Create a new directory for your Terraform configuration and create a file named main.tf with the following 
Step 4: Initialize Terraform
Open a terminal, navigate to the directory containing your main.tf file, and run:
terraform init
Step 5: Preview the Changes
Run the following command to see what Terraform plans to do:
terraform plan
Step 6: Apply the Changes
If the plan looks good, apply the change
terraform apply
Type "yes" when prompted to confirm.

Step 7: Access the EC2 Instance
After the deployment is complete, you can find the public IP of your EC2 instance in the Terraform output. Additionally, you can log in to the AWS Management Console to get the public IP.

Step 8: Destroy Resources (Optional)
When you're done, you can destroy the created resources to avoid incurring charges:
