data "aws_availability_zones" "available" {
    state = "available"
}

data "aws_vpc" "my_vpc" {
    id = "vpc-0ca860dd29153362a"
}

data "aws_internet_gateway" "igw" {
    filter {
      name = "attachment.vpc-id"
      values = [data.aws_vpc.my_vpc.id]
    }
}