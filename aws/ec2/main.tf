#---ec2-module/main.tf
resource "aws_instance" "default" {
  ami                = var.ami        
  instance_type      = var.instance_type
  subnet_id          = var.subnet_id 

  root_block_device {
    volume_type           = var.ebs_volume_type
    volume_size           = var.ebs_volume_size
    delete_on_termination = true 
  }
  tags = {
    Name = var.instance_name
  }
} 
