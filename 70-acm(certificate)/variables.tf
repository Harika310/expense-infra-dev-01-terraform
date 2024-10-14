variable "common_tags" {
  
  default     = {
     project = "expense"
     environment = "dev"
     terraform = "true"
  }
 
}

variable "backend_tags" {
    default = {
        Component = "backend"
    }
}

variable "project_name" {
    default = "expense"

}
variable "environment" {
    default = "dev"
}

variable "zone_name" {
    default = "daws-81s.online"
}

variable "zone_id" {
    default = "Z09622173O6F2OX8NP6KO"
}

