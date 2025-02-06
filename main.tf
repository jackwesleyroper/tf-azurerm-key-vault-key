resource "azurerm_key_vault_key" "key_vault_key" {
  name            = var.name
  key_vault_id    = var.key_vault_id
  key_type        = var.key_type
  key_size        = var.key_size
  key_opts        = var.key_opts
  expiration_date = var.expiration_date
  tags            = var.tags

  dynamic "rotation_policy" {
    for_each = var.rotation_policy != null ? [var.rotation_policy] : []
    content {
      expire_after         = rotation_policy.value.expire_after
      notify_before_expiry = rotation_policy.value.notify_before_expiry

      dynamic "automatic" {
        for_each = rotation_policy.value.automatic != null ? [rotation_policy.value.automatic] : []
        content {
          time_before_expiry = automatic.value.time_before_expiry
        }
      }
    }
  }
}
