data "dns_a_record_set" "fqdn" {
  count   = var.num_pods

  host    = "pod${count.index +1}-tgw.${var.domain_name}"
}