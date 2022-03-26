resource "vault_auth_backend" "education_userpass" {
  provider = vault.education_namespace
  type = "userpass"
}