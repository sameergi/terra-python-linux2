#Creating 1st EC2 instance in Public Subnet
resource "aws_instance" "myec2"{
 ami = "ami-0d92749d46e71c34c"
 instance_type = "t2.micro"
 count = 1
 key_name = "fe"
 vpc_security_group_ids = ["${aws_security_group.demosgid.id}"]
 subnet_id = aws_subnet.demosubnetid.id
 associate_public_ip_address = true
 user_data = "${file("data.sh")}"
tags = {
 Name = "myec2"
}
}
