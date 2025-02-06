output "key_vault_key_id" {
  value       = azurerm_key_vault_key.key_vault_key.id
  description = "The Key Vault Key ID."
}

output "key_vault_resource_id" {
  value       = azurerm_key_vault_key.key_vault_key.resource_id
  description = "The (Versioned) ID for this Key Vault Key."
}

output "key_vault_versionless_id" {
  value       = azurerm_key_vault_key.key_vault_key.versionless_id
  description = "The Base ID of the Key Vault Key. This property allows other resources to auto-rotate their value when the Key Vault Key is updated."
}