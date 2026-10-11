output "kms_secret_ciphertexts_id" {
  description = "Map of id values across all kms_secret_ciphertexts, keyed the same as var.kms_secret_ciphertexts except keys with no id are omitted"
  value       = { for k, v in google_kms_secret_ciphertext.kms_secret_ciphertexts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kms_secret_ciphertexts_additional_authenticated_data" {
  description = "Map of additional_authenticated_data values across all kms_secret_ciphertexts, keyed the same as var.kms_secret_ciphertexts except keys with no additional_authenticated_data are omitted"
  value       = { for k, v in google_kms_secret_ciphertext.kms_secret_ciphertexts : k => v.additional_authenticated_data if v.additional_authenticated_data != null && length(v.additional_authenticated_data) > 0 }
  sensitive   = true
}
output "kms_secret_ciphertexts_ciphertext" {
  description = "Map of ciphertext values across all kms_secret_ciphertexts, keyed the same as var.kms_secret_ciphertexts except keys with no ciphertext are omitted"
  value       = { for k, v in google_kms_secret_ciphertext.kms_secret_ciphertexts : k => v.ciphertext if v.ciphertext != null && length(v.ciphertext) > 0 }
}
output "kms_secret_ciphertexts_crypto_key" {
  description = "Map of crypto_key values across all kms_secret_ciphertexts, keyed the same as var.kms_secret_ciphertexts except keys with no crypto_key are omitted"
  value       = { for k, v in google_kms_secret_ciphertext.kms_secret_ciphertexts : k => v.crypto_key if v.crypto_key != null && length(v.crypto_key) > 0 }
}
output "kms_secret_ciphertexts_plaintext" {
  description = "Map of plaintext values across all kms_secret_ciphertexts, keyed the same as var.kms_secret_ciphertexts except keys with no plaintext are omitted"
  value       = { for k, v in google_kms_secret_ciphertext.kms_secret_ciphertexts : k => v.plaintext if v.plaintext != null && length(v.plaintext) > 0 }
  sensitive   = true
}

