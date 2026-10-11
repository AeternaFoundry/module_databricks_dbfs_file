variable "dbfs_files" {
  description = <<EOT
Map of dbfs_files, attributes below
Required:
    - path
Optional:
    - content_base64
    - md5
    - source
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    path           = string
    content_base64 = optional(string)
    md5            = optional(string)
    source         = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

