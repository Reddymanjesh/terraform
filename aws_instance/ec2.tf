resource "aws_instance" "web" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  tags {
    Name = "HelloWorld"
  }
  security_groups = [ "${aws_security_group.instance.id}" ]
}
