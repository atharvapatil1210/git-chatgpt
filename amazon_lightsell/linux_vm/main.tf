provider "aws" {
  region = "us-east-1"  # Change this to your desired region
}

resource "aws_lightsail_instance" "example" {
  name              = "my-ubuntu-vm"
  availability_zone = "us-east-1a"  # Change this to your desired availability zone
  blueprint_id      = "ubuntu_20_04"  # Ubuntu 20.04 LTS
  bundle_id         = "nano_2_0"      # Nano 2.0 bundle (1 vCPU, 512 MB RAM, 20 GB SSD)

  key_pair_name     = "my-key-pair"  # Name of your Lightsail SSH key pair

  tags = {
    Name = "My Ubuntu VM"
  }
}

output "public_ip" {
  value = aws_lightsail_instance.example.public_ip_address
}
