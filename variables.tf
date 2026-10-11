variable "kms_secret_ciphertexts" {
  description = <<EOT
Map of kms_secret_ciphertexts, attributes below
Required:
    - crypto_key
    - plaintext
Optional:
    - additional_authenticated_data
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    crypto_key                    = string
    plaintext                     = string
    additional_authenticated_data = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

