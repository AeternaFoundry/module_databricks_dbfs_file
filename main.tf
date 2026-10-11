resource "databricks_dbfs_file" "dbfs_files" {
  for_each = var.dbfs_files

  path           = each.value.path
  content_base64 = each.value.content_base64
  md5            = each.value.md5
  source         = each.value.source

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

