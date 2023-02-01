output "security_group" {
  description = "Security Group"
  value       = yandex_vpc_security_group.this
}

output "security_group_rules" {
  description = "Security Group Rules"
  value       = yandex_vpc_security_group_rule.this
}
