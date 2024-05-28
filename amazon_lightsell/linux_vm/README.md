# Terraform Amazon Lightsail Ubuntu Linux Virtual Machine

This Terraform script allows you to create an Ubuntu Linux virtual machine in Amazon Lightsail.

## Prerequisites

Before you begin, make sure you have the following:

- An AWS account with appropriate permissions.
- Terraform installed on your local machine.
- An SSH key pair created in the Lightsail console.

## Usage

1. Clone this repository to your local machine:

    ```bash
    git clone <repository-url>
    ```

2. Navigate to the directory containing the Terraform files:

    ```bash
    cd terraform-lightsail-ubuntu-vm
    ```

3. Update the `variables.tf` file with your desired configurations, such as region, availability zone, and instance size.

4. Initialize Terraform:

    ```bash
    terraform init
    ```

5. Review the execution plan:

    ```bash
    terraform plan
    ```

6. If the plan looks good, apply the Terraform configuration:

    ```bash
    terraform apply
    ```

7. Once the deployment is complete, Terraform will output the public IP address of the newly created Ubuntu VM.

8. You can now connect to your Ubuntu VM using SSH. Use the public IP address provided by Terraform along with the SSH key pair you specified.

## Customization

- You can customize the configuration of the Ubuntu VM by modifying the `variables.tf` file. Update the region, availability zone, instance size, etc., according to your requirements.

## Cleanup

To avoid incurring charges, make sure to destroy the resources created by Terraform when they are no longer needed:

```bash
terraform destroy
```

### Notes

    This Terraform script creates a basic Ubuntu Linux VM in Amazon Lightsail. Additional configuration, such as installing software or running scripts, can be done manually after the VM is created.

```bash 
Feel free to customize the README further based on your specific needs or additional instructions you want to provide.
```