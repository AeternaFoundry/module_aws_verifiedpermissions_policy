variable "verifiedpermissions_policies" {
  description = <<EOT
Map of verifiedpermissions_policies, attributes below
Required:
    - policy_store_id
Optional:
    - region
    - definition (block):
        - static (optional, block):
            - description (optional)
            - statement (required)
        - template_linked (optional, block):
            - policy_template_id (required)
            - principal (optional, block):
                - entity_id (required)
                - entity_type (required)
            - resource (optional, block):
                - entity_id (required)
                - entity_type (required)
EOT

  type = map(object({
    policy_store_id = string
    region          = optional(string)
    definition = optional(list(object({
      static = optional(list(object({
        description = optional(string)
        statement   = string
      })))
      template_linked = optional(list(object({
        policy_template_id = string
        principal = optional(list(object({
          entity_id   = string
          entity_type = string
        })))
        resource = optional(list(object({
          entity_id   = string
          entity_type = string
        })))
      })))
    })))
  }))
}

