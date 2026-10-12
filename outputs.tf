output "compute_pools_id" {
  description = "Map of id values across all compute_pools, keyed the same as var.compute_pools except keys with no id are omitted"
  value       = { for k, v in snowflake_compute_pool.compute_pools : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_pools_auto_resume" {
  description = "Map of auto_resume values across all compute_pools, keyed the same as var.compute_pools except keys with no auto_resume are omitted"
  value       = { for k, v in snowflake_compute_pool.compute_pools : k => v.auto_resume if v.auto_resume != null && length(v.auto_resume) > 0 }
}
output "compute_pools_auto_suspend_secs" {
  description = "Map of auto_suspend_secs values across all compute_pools, keyed the same as var.compute_pools except keys with no auto_suspend_secs are omitted"
  value       = { for k, v in snowflake_compute_pool.compute_pools : k => v.auto_suspend_secs if v.auto_suspend_secs != null }
}
output "compute_pools_backup_instance_families" {
  description = "Map of backup_instance_families values across all compute_pools, keyed the same as var.compute_pools except keys with no backup_instance_families are omitted"
  value       = { for k, v in snowflake_compute_pool.compute_pools : k => v.backup_instance_families if v.backup_instance_families != null && length(v.backup_instance_families) > 0 }
}
output "compute_pools_comment" {
  description = "Map of comment values across all compute_pools, keyed the same as var.compute_pools except keys with no comment are omitted"
  value       = { for k, v in snowflake_compute_pool.compute_pools : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "compute_pools_describe_output" {
  description = "Map of describe_output values across all compute_pools, keyed the same as var.compute_pools except keys with no describe_output are omitted"
  value       = { for k, v in snowflake_compute_pool.compute_pools : k => v.describe_output if v.describe_output != null && length(v.describe_output) > 0 }
}
output "compute_pools_for_application" {
  description = "Map of for_application values across all compute_pools, keyed the same as var.compute_pools except keys with no for_application are omitted"
  value       = { for k, v in snowflake_compute_pool.compute_pools : k => v.for_application if v.for_application != null && length(v.for_application) > 0 }
}
output "compute_pools_fully_qualified_name" {
  description = "Map of fully_qualified_name values across all compute_pools, keyed the same as var.compute_pools except keys with no fully_qualified_name are omitted"
  value       = { for k, v in snowflake_compute_pool.compute_pools : k => v.fully_qualified_name if v.fully_qualified_name != null && length(v.fully_qualified_name) > 0 }
}
output "compute_pools_initially_suspended" {
  description = "Map of initially_suspended values across all compute_pools, keyed the same as var.compute_pools except keys with no initially_suspended are omitted"
  value       = { for k, v in snowflake_compute_pool.compute_pools : k => v.initially_suspended if v.initially_suspended != null && length(v.initially_suspended) > 0 }
}
output "compute_pools_instance_family" {
  description = "Map of instance_family values across all compute_pools, keyed the same as var.compute_pools except keys with no instance_family are omitted"
  value       = { for k, v in snowflake_compute_pool.compute_pools : k => v.instance_family if v.instance_family != null && length(v.instance_family) > 0 }
}
output "compute_pools_max_nodes" {
  description = "Map of max_nodes values across all compute_pools, keyed the same as var.compute_pools except keys with no max_nodes are omitted"
  value       = { for k, v in snowflake_compute_pool.compute_pools : k => v.max_nodes if v.max_nodes != null }
}
output "compute_pools_min_nodes" {
  description = "Map of min_nodes values across all compute_pools, keyed the same as var.compute_pools except keys with no min_nodes are omitted"
  value       = { for k, v in snowflake_compute_pool.compute_pools : k => v.min_nodes if v.min_nodes != null }
}
output "compute_pools_name" {
  description = "Map of name values across all compute_pools, keyed the same as var.compute_pools except keys with no name are omitted"
  value       = { for k, v in snowflake_compute_pool.compute_pools : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compute_pools_show_output" {
  description = "Map of show_output values across all compute_pools, keyed the same as var.compute_pools except keys with no show_output are omitted"
  value       = { for k, v in snowflake_compute_pool.compute_pools : k => v.show_output if v.show_output != null && length(v.show_output) > 0 }
}

