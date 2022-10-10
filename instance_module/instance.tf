resource "aws_instance" "my_webserver" {
  ami           = "ami-0c956e207f9d113d5"
  instance_type = "t3.micro"
  vpc_security_group_ids = [var.security_group]
  iam_instance_profile   = var.instance_profile
}

resource "aws_eip" "public_ip" {
  instance = aws_instance.my_webserver.id
}

resource "aws_ebs_volume" "storage" {
  availability_zone = aws_instance.my_webserver.availability_zone
  size              = "60"
  type              = "gp2"
}

resource "aws_volume_attachment" "storate_attachment" {
  device_name = "/dev/sds"
  instance_id = aws_instance.my_webserver.id
  volume_id   = aws_ebs_volume.storage.id
}
