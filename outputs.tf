output "security_group" {
  description = "The ID of the security group"
  value       = yandex_vpc_security_group.this
}

output "security_group_rules" {
  description = "IDs of created security group rules"
  value       = yandex_vpc_security_group_rule.this
}
