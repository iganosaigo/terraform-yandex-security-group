### Yandex.Cloud Terraform Security Group module
Provided as is. Make sure you check what it does before apply.
<!-- BEGIN_TF_DOCS -->

## Example

```hcl
module "sg" {
  source     = "github.com/iganosaigo/terraform-yandex-security-group.git"
  name       = "your value"
  folder_id  = "your value"
  network_id = "your value"
  rules = [
    {
      direction      = "ingress"
      protocol       = "TCP"
      description    = "rule 1 description"
      v4_cidr_blocks = ["10.1.0.0/24", "10.2.0.0/24"]
      port           = 80
    },
    {
      direction      = "egress"
      protocol       = "TCP"
      description    = "rule 2 description"
      v4_cidr_blocks = ["10.1.0.0/24", "10.2.0.0/24"]
      from_port      = 123
      to_port        = 321
    },

  ]
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | >= 0.78.0 |

## Usage
Basic usage of this module is as follows:

```hcl
module "example" {
	 source  = "github.com/iganosaigo/terraform-yandex-security-group.git"

	 # Required variables
	 name  = 
	 network_id  = 

	 # Optional variables
	 folder_id  = null
	 rules  = []
}
```

## Resources

| Name | Type |
|------|------|
| [yandex_vpc_security_group.this](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_security_group) | resource |
| [yandex_vpc_security_group_rule.this](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_security_group_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | Folder ID | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name | `string` | n/a | yes |
| <a name="input_network_id"></a> [network\_id](#input\_network\_id) | Network ID | `string` | n/a | yes |
| <a name="input_rules"></a> [rules](#input\_rules) | Egress/Ingress rules | <pre>list(object({<br>    direction         = string<br>    protocol          = string<br>    description       = optional(string)<br>    v4_cidr_blocks    = optional(list(string))<br>    from_port         = optional(number)<br>    to_port           = optional(number)<br>    port              = optional(number)<br>    predefined_target = optional(string)<br>  }))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_security_group"></a> [security\_group](#output\_security\_group) | Security Group |
| <a name="output_security_group_rules"></a> [security\_group\_rules](#output\_security\_group\_rules) | Security Group Rules |
<!-- END_TF_DOCS -->
