output "vpc_id" {
  value       = aws_vpc.main.id
  description = "VPC ID"
}

output "public_subnet_1" {
  value       = aws_subnet.public_1.id
  description = "Public Subnet 1"
}

output "public_subnet_2" {
  value       = aws_subnet.public_2.id
  description = "Public Subnet 2"
}

output "private_subnet_1" {
  value       = aws_subnet.private_1.id
  description = "Private Subnet 1"
}

output "private_subnet_2" {
  value       = aws_subnet.private_2.id
  description = "Private Subnet 2"
}

output "rds_endpoint" {
  value       = aws_db_instance.main.endpoint
  description = "RDS endpoint"
}

output "alb_sg_id" {
  value       = aws_security_group.alb.id
  description = "ALB Security Group ID"
}

output "app_sg_id" {
  value       = aws_security_group.app.id
  description = "App Security Group ID"
}

output "db_sg_id" {
  value       = aws_security_group.db.id
  description = "Database Security Group ID"
}
