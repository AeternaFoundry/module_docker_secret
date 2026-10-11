resource "docker_secret" "secrets" {
  for_each = var.secrets

  data = each.value.data
  name = each.value.name

  dynamic "labels" {
    for_each = each.value.labels != null ? each.value.labels : []
    content {
      label = labels.value.label
      value = labels.value.value
    }
  }
}

