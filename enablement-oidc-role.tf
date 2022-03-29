resource "vault_jwt_auth_backend_role" "gmail" {
  provider = vault.enablement_namespace
  backend         = vault_jwt_auth_backend.gcp.path
  role_name       = "gmail"
  token_policies  = ["default", "gmail-admin"]

  bound_audiences = ["*"]
  
  user_claim      = "https://vault/user"
  role_type       = "oidc"
  allowed_redirect_uris=["https://auth.alexkalaj.com:8200/ui/vault/auth/oidc/oidc/callback"]
}