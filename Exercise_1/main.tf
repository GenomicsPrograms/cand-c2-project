# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
region     = "us-east-2"
shared_credentials_file = "/path_to_creds/"
profile = "default"
}


# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity T2" {
count         = "4"
ami           = "ami-013de1b045799b282"
instance_type = "t2.micro"
  tags = {
    Name = "Udacity Terraform"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "Udacity M4" {
count         = "2"
ami           = "ami-013de1b045799b282"
instance_type = "m4.large"
  tags = {
    Name = "Udacity Terraform"
  }
}
