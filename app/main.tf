provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

# Create EC2
module "ec2" {
  source = "../modules/ec2"
  aws_instancetype = "t2.micro"
  aws_sg_name = module.sg.ec2_security_group_id
  aws_public_ip = module.eip.eip_output
  key_name = "devops-siega"
  availability_zone = "us-east-1a"
  
}

# Create EIP
module "eip" {
  source = "../modules/eip"

}

# Create EBS
module "ebs" {
  source = "../modules/ebs"
}
 
# Create Security Group
module "sg" {
  source = "../modules/sg"
  aws_sg_name = "my_security_group"
  aws_sg_tag = "my_tag"
  

}
