variable "project_name" {
    default = "expense"
}

variable "environment" {
    default = "dev"
}



variable "common_tags" {
    default = {
        project = "expense"
        environment = "dev"
        terraform = true
   }
}

variable "vpc_cidr" {
    default = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
    default = ["10.0.1.0/24", "10.0.2.0/24"]
   
}

variable "private_subnet_cidrs" {
    default = ["10.0.11.0/24", "10.0.12.0/24"]
   
}

variable "database_subnet_cidrs" {
    default = ["10.0.21.0/24", "10.0.22.0/24"]
   
}

variable "is_peering_required" {
    default = true
}

variable "mysql_sg_tags" {
    default = {
        component = "mysql"
    }
}

variable "backend_sg_tags" {
    default = {
        component = "backend"
    }
}

variable "frontend_sg_tags" {
    default = {
        component = "frontend"
    }
}

variable "bastion_sg_tags" {
    default = {
        component = "bastion"
    }
}

variable "ansible_sg_tags" {
    default = {
        component = "ansible"
    }
}

variable "app_alb_sg_tags" {
    default = {
        component = "app-alb"
    }
}

variable "vpn_sg_tags" {
    default = {
        component = "vpn"
    }
}