resource "aws_vpc" "test-vpc" {
    cidr_block = "10.0.0.0/24"
    tags = {
      Name = "test-vpc"
    }
  
}

resource "aws_subnet" "test-subnet" {
vpc_id = aws_vpc.test-vpc.id
cidr_block = "10.0.0.0/26"
  
}
