output "secrets_id" {
  description = "Map of id values across all secrets, keyed the same as var.secrets"
  value       = { for k, v in docker_secret.secrets : k => v.id }
}
output "secrets_data" {
  description = "Map of data values across all secrets, keyed the same as var.secrets"
  value       = { for k, v in docker_secret.secrets : k => v.data }
  sensitive   = true
}
output "secrets_labels" {
  description = "Map of labels values across all secrets, keyed the same as var.secrets"
  value       = { for k, v in docker_secret.secrets : k => v.labels }
}
output "secrets_name" {
  description = "Map of name values across all secrets, keyed the same as var.secrets"
  value       = { for k, v in docker_secret.secrets : k => v.name }
}

