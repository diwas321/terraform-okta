terraform {
  required_providers {
    okta = {
      source = "okta/okta"
    }
    vault = {
      source  = "hashicorp/vault"
      version = "~> 3.20"
    }
  }
}

data "vault_kv_secret_v2" "okta_private_key" {
  mount = "secret"
  name  = "okta/private_key"
}

provider "vault" {
  address = "http://127.0.0.1:8200"
  token   = var.vault_token

}


provider "okta" {
  org_name  = "dev-1173502"
  base_url  = "okta.com"
  client_id = var.okta_client_id
  #private_key = data.vault_kv_secret_v2.okta_private_key.data["key"]
  private_key = var.okta_private_key
  scopes      = ["okta.groups.manage"]

}



