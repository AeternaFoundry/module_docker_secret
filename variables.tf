variable "secrets" {
  description = <<EOT
Map of secrets, attributes below
Required:
    - data
    - name
Optional:
    - labels (block):
        - label (required)
        - value (required)
EOT

  type = map(object({
    data = string
    name = string
    labels = optional(list(object({
      label = string
      value = string
    })))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

