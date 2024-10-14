variable "common_tags" {
  
  default     = {
     project = "expense"
     environment = "dev"
     terraform = "true"
  }
 
}

variable "frontend_tags" {
    default = {
        Component = "frontend"
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

