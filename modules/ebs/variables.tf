variable "ebs_zone"{
  type        = string
  description = "set EBS zone"
  default     = "us-east-1b"
}

variable "ebs_size" {
  type        = number
  description = "set EBS size"
  default     = "3"
}

variable aws_common_tag {
  type        = map
  description = "Set EBS tag"
  default = {
    Name = "ebs-terraform_project"
  }
}