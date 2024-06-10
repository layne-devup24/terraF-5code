terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.61.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_lightsail_instance" "custom" {
  name              = "myserver"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_3_0"
  user_data         =  file ("scrip.sh")
key_pair_name =  "week2"
tags = {
  team = "DevOps"
env = "dev"
created_by = "terraform"
}
}

output "km_public_ip" {
  value = aws_lightsail_instance.custom.public_ip_address
}

output "my-public-ip" {
  value = aws_lightsail_instance.custom.username
}

output "my_key" {
  value = aws_lightsail_instance.custom.key_pair_name
}
