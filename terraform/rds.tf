resource "aws_db_subnet_group" "main" {
  name       = "${var.app_name}-db-subnet"
  subnet_ids = [aws_subnet.private_1.id, aws_subnet.private_2.id]
}

resource "aws_db_instance" "main" {
  identifier            = "${var.app_name}-mysql"
  engine               = "mariadb"
  instance_class       = "db.t3.micro"
  allocated_storage    = 20
  
  username             = var.db_username
  password             = var.db_password
  
  db_subnet_group_name   = aws_db_subnet_group.main.name
  vpc_security_group_ids = [aws_security_group.db.id]
  
  publicly_accessible  = false
  storage_encrypted    = true
  backup_retention_period = 1
  skip_final_snapshot  = true
  
  tags = { Name = "${var.app_name}-db" }
}
