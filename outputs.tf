output "dbfs_files_id" {
  description = "Map of id values across all dbfs_files, keyed the same as var.dbfs_files except keys with no id are omitted"
  value       = { for k, v in databricks_dbfs_file.dbfs_files : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dbfs_files_content_base64" {
  description = "Map of content_base64 values across all dbfs_files, keyed the same as var.dbfs_files except keys with no content_base64 are omitted"
  value       = { for k, v in databricks_dbfs_file.dbfs_files : k => v.content_base64 if v.content_base64 != null && length(v.content_base64) > 0 }
}
output "dbfs_files_dbfs_path" {
  description = "Map of dbfs_path values across all dbfs_files, keyed the same as var.dbfs_files except keys with no dbfs_path are omitted"
  value       = { for k, v in databricks_dbfs_file.dbfs_files : k => v.dbfs_path if v.dbfs_path != null && length(v.dbfs_path) > 0 }
}
output "dbfs_files_file_size" {
  description = "Map of file_size values across all dbfs_files, keyed the same as var.dbfs_files except keys with no file_size are omitted"
  value       = { for k, v in databricks_dbfs_file.dbfs_files : k => v.file_size if v.file_size != null }
}
output "dbfs_files_md5" {
  description = "Map of md5 values across all dbfs_files, keyed the same as var.dbfs_files except keys with no md5 are omitted"
  value       = { for k, v in databricks_dbfs_file.dbfs_files : k => v.md5 if v.md5 != null && length(v.md5) > 0 }
}
output "dbfs_files_path" {
  description = "Map of path values across all dbfs_files, keyed the same as var.dbfs_files except keys with no path are omitted"
  value       = { for k, v in databricks_dbfs_file.dbfs_files : k => v.path if v.path != null && length(v.path) > 0 }
}
output "dbfs_files_provider_config" {
  description = "Map of provider_config values across all dbfs_files, keyed the same as var.dbfs_files except keys with no provider_config are omitted"
  value       = { for k, v in databricks_dbfs_file.dbfs_files : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "dbfs_files_source" {
  description = "Map of source values across all dbfs_files, keyed the same as var.dbfs_files except keys with no source are omitted"
  value       = { for k, v in databricks_dbfs_file.dbfs_files : k => v.source if v.source != null && length(v.source) > 0 }
}

