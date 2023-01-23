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
  description            = each.value.description
  v4_cidr_blocks         = each.value.v4_cidr_blocks
  from_port              = each.value.from_port
  to_port                = each.value.to_port
  port                   = each.value.port
  predefined_target      = each.value.predefined_target
}
