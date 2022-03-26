
// Root namespace - education
resource "vault_namespace" "education" {
  provider = vault.root_namespace
  path     = "education"
}

// Child namespaces
resource "vault_namespace" "training" {
  provider = vault.education_namespace
  path     = "training"
}

resource "vault_namespace" "certification" {
  provider = vault.education_namespace
  path     = "certification"
}