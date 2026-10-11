output "secrets_id" {
  description = "Map of id values across all secrets, keyed the same as var.secrets except keys with no id are omitted"
  value       = { for k, v in docker_secret.secrets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "secrets_data" {
  description = "Map of data values across all secrets, keyed the same as var.secrets except keys with no data are omitted"
  value       = { for k, v in docker_secret.secrets : k => v.data if v.data != null && length(v.data) > 0 }
  sensitive   = true
}
output "secrets_labels" {
  description = "Map of labels values across all secrets, keyed the same as var.secrets except keys with no labels are omitted"
  value       = { for k, v in docker_secret.secrets : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "secrets_name" {
  description = "Map of name values across all secrets, keyed the same as var.secrets except keys with no name are omitted"
  value       = { for k, v in docker_secret.secrets : k => v.name if v.name != null && length(v.name) > 0 }
}

