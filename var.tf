#Aviatrix controller vars
variable "aviatrix_admin_account" { default = "admin" }
variable "aviatrix_admin_password" { default = "Avi12345-" }
variable "aviatrix_controller_ip" { default = "controller.avxlab.de" }
variable "aws_account_name" { }

# CNE details
variable "num_pods" { }
variable "domain_name" { }

variable "hub_cidr" { default = "172.16.0.0/16" }
variable "hub_region" { default = "eu-central-1" }

variable "ssh_key" { }