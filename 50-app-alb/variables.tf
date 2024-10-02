variable "common_tags" {
  
  default     = {
     project = "expense"
     environment = "dev"
     terraform = "true"
  }
 
}

variable "app_alb_tags" {
    default = {
        component = "app-alb"
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