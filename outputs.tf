output "security_group_id" {
  description = "The ID of the security group"
  value       = yandex_vpc_security_group.this.id
}

output "security_group_rule_ids" {
  description = "IDs of created security group rules"
  value       = [for i in yandex_vpc_security_group_rule.this : i.id]
}
