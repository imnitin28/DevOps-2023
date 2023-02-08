resource "aws_instance" "web" {
  ami           =  "ami-05c8ca4485f8b138a"//data.aws_ami.ubuntu.id
  instance_type = "m5.large"

  tags = {
    Name = "RHEL-tower"
  }
}