resource "aws_key_pair" "terraTest-key" {
  key_name   = "terraTestkey"
  public_key = file(var.PUB_KEY)
}

resource "aws_instance" "terraTest-web" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.terraTest-pub-1.id
  key_name               = aws_key_pair.terraTest-key.key_name
  vpc_security_group_ids = [aws_security_group.terraTest_stack_sg.id]
  tags = {
    Name = "my-terraTest"
  }
}

resource "aws_ebs_volume" "vol_4_terraTest" {
  availability_zone = var.ZONE1
  size              = 3
  tags = {
    Name = "extr-vol-4-terraTest"
  }
}

resource "aws_volume_attachment" "atch_vol_terraTest" {
  device_name = "/dev/xvdh"
  volume_id   = aws_ebs_volume.vol_4_terraTest.id
  instance_id = aws_instance.terraTest-web.id
}

output "PublicIP" {
  value = aws_instance.terraTest-web.public_ip
}
