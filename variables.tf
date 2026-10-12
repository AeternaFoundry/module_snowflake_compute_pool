variable "compute_pools" {
  description = <<EOT
Map of compute_pools, attributes below
Required:
    - instance_family
    - max_nodes
    - min_nodes
    - name
Optional:
    - auto_resume
    - auto_suspend_secs
    - backup_instance_families
    - comment
    - for_application
    - initially_suspended
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    instance_family          = string
    max_nodes                = number
    min_nodes                = number
    name                     = string
    auto_resume              = optional(string)
    auto_suspend_secs        = optional(number)
    backup_instance_families = optional(list(string))
    comment                  = optional(string)
    for_application          = optional(string)
    initially_suspended      = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

