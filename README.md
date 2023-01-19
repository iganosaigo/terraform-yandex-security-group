### Yandex.Cloud Terraform Security Group module
Provided as is. Make sure you check what it does before apply.

#### Example
```
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

