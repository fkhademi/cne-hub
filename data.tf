data "dns_a_record_set" "fqdn" {
  count   = var.num_pods

  host    = "pod${count.index +1}-gcp-gw.${var.domain_name}"
}
data "aws_route53_zone" "domain_name" {
  name         = var.domain_name
  private_zone = false
}