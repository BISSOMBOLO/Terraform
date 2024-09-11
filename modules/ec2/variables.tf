variable "aws_instancetype" {
  type        = string
  description = "definir le type de l'instance"
  default     = "t2.nano"
}

variable "common_tag" {
  type        = map
  description = "definir le tag de l'image"
  default = {
    Name = "ec2-terraform"
  }
}

# variable "aws_key_name" {
#   type    = string
#   default = "devops-siega"
# }

variable "aws_sg_name" {
  type        = string
  description = "Security Group"
}

variable "key_name" {
  type = string
  

}
variable "availability_zone" {
  type = string
  
  
}

variable "aws_public_ip" {
  type = string
  description = "set public ip"
  default = "eip-mini-projet-ec2"
}

variable "username" {
  type = string
  default = "ubuntu"
}