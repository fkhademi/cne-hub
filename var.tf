/*#Aviatrix controller vars
variable "aviatrix_admin_account" { default = "admin" }
variable "aviatrix_admin_password" { default = "Avi12345-" }
variable "aviatrix_controller_ip" { default = "controller.avxlab.de" }
variable "aws_account_name" { }

# CNE details
variable "num_pods" { }
variable "offset" { default = 1 }
variable "domain_name" { }
variable "priv_domain_name" { }

variable "hub_cidr" { default = "172.16.0.0/16" }
variable "hub_region" { default = "eu-central-1" }

variable "ssh_key" { }
variable "aws_access_key_dns" { }
variable "aws_secret_key_dns" { }
*/
#Aviatrix controller vars
variable "aviatrix_admin_account" { 
    description = "Aviatrix admin user"
    default     = "admin" 
}
variable "aviatrix_admin_password" { 
    description = "Aviatrix admin password"
}
variable "aviatrix_controller_ip" { 
    description = "Aviatrix Controller IP/Hostname"
}
variable "aws_account_name" { 
    description = "AWS Account name defined in AVX Controller"
    default = "aws-fk"
}

# AWS account for deploying EC2 Instance
variable "aws_access_key" { 
    description = "AWS Access Key"
}
variable "aws_secret_key" { 
    description = "AWS Secret Key"
}

# AWS account for adding Route53 hostnames
variable "aws_access_key_dns" { 
    description = "AWS Access Key to update Route53"
}
variable "aws_secret_key_dns" { 
    description = "AWS Secret Key to update Route53"
}

# CNE details
variable "num_pods" { 
    description = "Number of Pods deployed"
    default = 1 
}
variable "domain_name" { 
    description = "Public Route53 Domain to update"
    default = "pub.avxlab.nl" 
}
variable "priv_domain_name" { 
    description = "Private Route53 Domain to update"
    default = "priv.avxlab.nl" 
}
variable "hub_region" { 
    description = "AWS region to deploy resources"
    default = "eu-central-1" 
}
variable "ssh_key" { 
    description = "SSH public key for test Ubuntu VM"
}