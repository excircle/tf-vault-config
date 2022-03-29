
// Root namespace - education
resource "vault_namespace" "education" {
  provider = vault.root_namespace
  path     = "education"
}

// Root namespace - enablement
resource "vault_namespace" "enablement" {
  provider = vault.root_namespace
  path     = "enablement"
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