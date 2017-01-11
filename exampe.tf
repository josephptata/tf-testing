provider "aws" {
  access_key = "AKIAJDCRGDFJRBHUGOYQ"
  secret_key = "D8+icM119gTxQ3eNb/PtECMzs4z3QFqsBb/BgH8P"
  region     = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-b7a114d7"
  instance_type = "t2.micro"
}

resource "aws_eip" "ip" {
    instance = "${aws_instance.example.id}"
}
