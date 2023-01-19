resource "yandex_vpc_security_group" "this" {
  name       = var.name
  network_id = var.network_id
  folder_id  = var.folder_id
}

resource "yandex_vpc_security_group_rule" "this" {
  for_each = length(var.rules[*]) > 0 ? { for k, v in var.rules : k => v } : {}

  security_group_binding = yandex_vpc_security_group.this.id
  direction              = each.value.direction
  protocol               = each.value.protocol
  description            = lookup(each.value, "description", null)
  v4_cidr_blocks         = lookup(each.value, "v4_cidr_blocks", null)
  from_port              = lookup(each.value, "from_port", null)
  to_port                = lookup(each.value, "to_port", null)
  port                   = lookup(each.value, "port", null)
  predefined_target      = lookup(each.value, "predefined_target", null)
}
