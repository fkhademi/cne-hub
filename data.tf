data "dns_a_record_set" "fqdn" {
  count   = var.num_pods

  host    = "pod${count.index +1}-tgw.${var.domain_name}"
}
data "aws_route53_zone" "domain_name" {
  name         = var.domain_name
  private_zone = false
}
data "aws_route53_zone" "priv_domain_name" {
  name         = var.priv_domain_name
  private_zone = false
}