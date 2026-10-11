resource "google_kms_secret_ciphertext" "kms_secret_ciphertexts" {
  for_each = var.kms_secret_ciphertexts

  crypto_key                    = each.value.crypto_key
  plaintext                     = each.value.plaintext
  additional_authenticated_data = each.value.additional_authenticated_data

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

