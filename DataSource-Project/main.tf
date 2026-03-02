resource "aws_instance" "example" {
    ami           = data.aws_ami.amazon_linux.id
    instance_type = "t3.micro"
    subnet_id = data.aws_subnet.shared.id
}
