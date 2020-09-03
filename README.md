### Description
This module will build a transit VPC with an Aviatrix Transit Gateway, a spoke VPC with an Aviatrix Spoke GW and peer them together.  Additionally "n" Site2Cloud connections will be created on the Transit GW to simulate a pseudo DC for the CNE.

### Usage Example
```
module "cne-hub" {
  source        = "git::https://github.com/fkhademi/cne-hub.git"

  aws_account_name  = "AWS"
  num_pods          = 15
  ssh_key           = var.ssh_key
  domain_name       = "pub.avxlab.de"
}
```

### Variables
The following variables are required:

key | value
:--- | :---
aws_account_name | AWS account name define in the AVX Controller
num_pods | Number of pods that will be created in the CNE
ssh_key | Ubuntu client SSH key
domain_name | Route53 domain name

The following variables are optional:

key | default | value 
:---|:---|:---
hub_cidr | 172.16.0.0/16 | CIDR range to be used for pseudo DC
hub_region | eu-central-1 | Region to deploy the pseudo DC

### Outputs
This module will return the following outputs:

key | description
:---|:---
