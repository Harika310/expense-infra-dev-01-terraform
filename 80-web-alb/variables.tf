variable "common_tags" {
  
  default     = {
     project = "expense"
     environment = "dev"
     terraform = "true"
  }
 
}

variable "web_alb_tags" {
    default = {
        component = "web-alb"
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