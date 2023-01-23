variable "name" {
  description = "Name for resources"
  type        = string
}

variable "network_id" {
  description = "Network ID where to create security-group"
  type        = string
}

variable "folder_id" {
  description = "Folder ID where to create security-group"
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


