output "vpc_id" {
    value = data.aws_vpc.my_vpc.id
}

output "subnet_ids" {
    value = aws_subnet.subnets.*.id
}

output "igw_id" {
    value = data.aws_internet_gateway.igw.id
}