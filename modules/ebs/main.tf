resource "aws_ebs_volume" "volume" {
  availability_zone =  var.ebs_zone
  size =    var.ebs_size
  
  tags = {
    Name = "var.ebs_common_tag"
  }
  
}


