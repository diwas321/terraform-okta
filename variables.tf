variable "okta_private_key" {
  description = "Private key for terraform service app in okta"
  type        = string
  sensitive   = true
}

variable "okta_client_id" {
  description = "Client id of the terraform service app in okta"
  type        = string
  sensitive   = true
}

variable "vault_token" {
  type      = string
  sensitive = true

}