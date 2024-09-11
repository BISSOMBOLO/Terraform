data "aws_ami" "app_ami" {
  most_recent = true
  owners      = ["099720109477"] # Canonical

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }
  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }

}

resource "aws_instance" "mini-projet-ec2" {
  ami             = data.aws_ami.app_ami.id
  instance_type   = var.aws_instancetype
  key_name        = var.key_name
  availability_zone = var.availability_zone
  tags            = var.common_tag
  security_groups = ["${var.aws_sg_name}"]

  provisioner "remote-exec" {
     inline = [
       "sudo apt install -y nginx",
       "sudo systemctl start nginx"
     ]

   connection {
     type = "ssh"
     user = "ubuntu"
     private_key = file("../app/${var.key_name}.pem")
     host = self.public_ip
   }
   }
  root_block_device {
    delete_on_termination = true
  }

}

