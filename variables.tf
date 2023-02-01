variable "name" {
  description = "Name"
  type        = string
}

variable "network_id" {
  description = "Network ID"
  type        = string
}

variable "folder_id" {
  description = "Folder ID"
  type        = string
  default     = null
}

variable "rules" {
  description = "Egress/Ingress rules"
  type = list(object({
    direction         = string
    protocol          = string
    description       = optional(string)
    v4_cidr_blocks    = optional(list(string))
    from_port         = optional(number)
    to_port           = optional(number)
    port              = optional(number)
    predefined_target = optional(string)
  }))
  default = []
}
