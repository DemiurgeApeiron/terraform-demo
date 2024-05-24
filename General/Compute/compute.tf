resource "aws_instance" "ec2_front_end" {
  provider      = aws.aws-west
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  tags = {
    Name = "Compute-front-end"
  }

}

resource "aws_instance" "ec2_back_end" {
  provider      = aws.aws-west
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  tags = {
    Name = "Compute-back-end"
  }
}
