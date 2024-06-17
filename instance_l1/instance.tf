resource "aws_key_pair" "terra-key" {
  key_name = "terra-key"
  public_key = file("terrakey.pub")
}

resource "aws_instance" "terra-instance" {
    ami = var.AMIS[var.REGION]
    instance_type = "t2.micro"
    availability_zone = var.ZONE
    key_name = aws_key_pair.terra-key.key_name
    vpc_security_group_ids = ["sg-0746fb95476e7b28e"]
    tags = {
        Name = "terra-instance"
        Project = "Basics"
    }
    
  
}