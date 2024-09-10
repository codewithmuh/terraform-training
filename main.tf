# Configure the AWS provider
provider "aws" {
  region = "us-west-1" # Set the AWS region where resources will be deployed (e.g., us-west-1)
}

# Create an EC2 instance
resource "aws_instance" "example_medium" {
  ami           = "ami-0d53d72369335a9d6" # Amazon Machine Image (AMI) ID for the EC2 instance
  instance_type = "t2.medium"              # Instance type (e.g., t2.micro for a small, low-cost instance)

# Adding tags to the instance
  tags = {
    Name = "terraform-training" # Assign a name to the EC2 instance
  }
}

# Create an EC2 instance
# resource "aws_instance" "example_small" {
#   ami           = "ami-0d53d72369335a9d6" # Amazon Machine Image (AMI) ID for the EC2 instance
#   instance_type = "t2.small"              # Instance type (e.g., t2.micro for a small, low-cost instance)

# # Adding tags to the instance
#   tags = {
#     Name = "small-instance" # Assign a name to the EC2 instance
#   }
# }
