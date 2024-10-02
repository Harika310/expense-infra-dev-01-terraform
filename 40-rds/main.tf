module "db" {
  source = "terraform-aws-modules/rds/aws"

  identifier = local.resource_name

  engine            = "mysql"
  engine_version    = "8.0"
  instance_class    = "db.t3.micro"
  allocated_storage = 5

  db_name  = "transcations"
  username = "root"
  password = "ExpenseApp1"
  manage_master_user_password = false
  port     = "3306"

  

  vpc_security_group_ids = [local.mysql_sg_id]
  skip_final_snapshot = true


  tags = merge (
     var.common_tags,
     var.rds_tags,
   
  ) 
   # DB parameter group
 db_subnet_group_name = local.database_subnet_group_name
 
  family = "mysql8.0"

  # DB option group
  major_engine_version = "8.0"

  # Database Deletion Protection
  
  parameters = [
    {
      name  = "character_set_client"
      value = "utf8mb4"
    },
    {
      name  = "character_set_server"
      value = "utf8mb4"
    }
  ]

  options = [
    {
      option_name = "MARIADB_AUDIT_PLUGIN"

      option_settings = [
        {
          name  = "SERVER_AUDIT_EVENTS"
          value = "CONNECT"
        },
        {
          name  = "SERVER_AUDIT_FILE_ROTATIONS"
          value = "37"
        },
      ]
    },
  ]
}