// Userpass Configuration

resource "vault_generic_endpoint" "education_userpass_user_bob" {
  provider = vault.education_namespace
  depends_on           = [vault_auth_backend.education_userpass]
  path                 = "auth/userpass/users/bob"
  ignore_absent_fields = true

  data_json = <<EOT
{
  "password": "training"
}
EOT
}