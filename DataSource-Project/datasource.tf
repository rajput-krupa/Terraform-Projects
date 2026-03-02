# This file contains the data source configuration for AWS VPC and Subnet, as well as the resource configuration for an AWS EC2 instance.

# Data source of VPC which is default.
data "aws_vpc" "vpc_name" {
    default = true
   # id = "vpc-0117ddf5f4f125e86"
   # filter {
   #  name = "tag:name"
   # values = ["default"]
   #}  
}

# Data source of Subnet in the default VPC.
data "aws_subnet" "shared" {
  id = "subnet-039e1cb4df61e55f4"  
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.vpc_name.id]
  }

  filter {
    name   = "default-for-az"
    values = ["true"]
  }
}

# Data Source of AMI which is Amazon Linux 2.
data "aws_ami" "amazon_linux" {
    owners = ["amazon"]
    most_recent = true
    filter {
        name = "name"
        values = ["amzn2-ami-hvm-*-x86_64-gp2"]
        
    }
}
