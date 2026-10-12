resource "snowflake_compute_pool" "compute_pools" {
  for_each = var.compute_pools

  instance_family          = each.value.instance_family
  max_nodes                = each.value.max_nodes
  min_nodes                = each.value.min_nodes
  name                     = each.value.name
  auto_resume              = each.value.auto_resume
  auto_suspend_secs        = each.value.auto_suspend_secs
  backup_instance_families = each.value.backup_instance_families
  comment                  = each.value.comment
  for_application          = each.value.for_application
  initially_suspended      = each.value.initially_suspended

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

