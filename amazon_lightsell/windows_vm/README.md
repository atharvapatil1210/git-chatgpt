# Terraform Amazon Lightsail Windows Virtual Machine

This Terraform script allows you to create a Windows Virtual Machine (VM) in Amazon Lightsail.

## Prerequisites

Before you begin, you'll need:

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
    cd terraform-lightsail-windows-vm
    ```

3. Update the `main.tf` file with your desired configurations, such as region, availability zone, and instance size.

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

7. Once the deployment is complete, Terraform will output the public IP address of the newly created Windows VM.

8. You can now connect to your Windows VM using Remote Desktop Protocol (RDP). Use the public IP address provided by Terraform along with the administrator username and password obtained from the Lightsail console.

## Customization

- You can customize the configuration of the Windows VM by modifying the `variables.tf` file. Update the region, availability zone, instance size, etc., according to your requirements.

## Cleanup

To avoid incurring charges, make sure to destroy the resources created by Terraform when they are no longer needed:

```bash
terraform destroy
```
### Notes

This Terraform script creates a basic Windows VM in Amazon Lightsail. Additional configuration, such as installing software or running scripts, can be done manually after the VM is created.
Lightsail currently doesn't support direct provisioning of Windows VMs with Docker using Terraform. If you need to use Docker on Windows, you can provision a Windows VM and then manually configure Docker on it.


    Feel free to customize the README further based on your specific needs or additional instructions you want to provide.
