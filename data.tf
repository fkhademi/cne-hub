data "dns_a_record_set" "fqdn" {
  count   = var.num_pods

  host    = "${var.gw_hostname}${count.index +1}.${var.domain_name}"
}