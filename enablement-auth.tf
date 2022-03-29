resource "vault_auth_backend" "enablement_userpass" {
  provider = vault.enablement_namespace
  type     = "userpass"
}

resource "vault_jwt_auth_backend" "gcp" {
    path = "oidc"
    provider = vault.enablement_namespace
    oidc_discovery_url="https://accounts.google.com"
    oidc_client_id="227371124567-qu5s37kc4ds3bf1h5mf49okcvikukd83.apps.googleusercontent.com"
    oidc_client_secret="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"
    default_role="gmail"
}