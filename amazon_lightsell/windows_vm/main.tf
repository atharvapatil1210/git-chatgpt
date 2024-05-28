provider "aws" {
  region = "us-east-1"  # Change this to your desired region
}

resource "aws_lightsail_instance" "example" {
  name              = "my-windows-vm"
  availability_zone = "us-east-1a"  # Change this to your desired availability zone
  blueprint_id      = "windows_2019"  # Windows Server 2019
  bundle_id         = "medium_2_0"    # Change this to your desired instance size

  key_pair_name     = "my-key-pair"  # Name of your Lightsail SSH key pair

  tags = {
    Name = "My Windows VM"
  }
}

output "public_ip" {
  value = aws_lightsail_instance.example.public_ip_address
}
