variable "name" {
  type        = string
  description = "The name of the Key Vault Key."
}

variable "key_vault_id" {
  type        = string
  description = "The ID of the Key Vault where the Key should be created."
}

variable "key_type" {
  type        = string
  description = "Specifies the Key Type to use for this Key Vault Key."
}

variable "key_size" {
  type        = number
  description = "Specifies the Size of the RSA key to create in bytes."
  default     = 2048
}

variable "key_opts" {
  type        = list(any)
  description = "A list of JSON web key operations."
}

variable "expiration_date" {
  type        = string
  description = "Specifies the Expiration Date for the Key"
}

variable "rotation_policy" {
  description = "A block detailing key vault key expirations and automatic rotations."
  default     = null
}

variable "tags" {
  type        = map(string)
  description = " A mapping of tags to assign to the resource"
  default     = null
}
