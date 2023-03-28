variable "hcloud_token" {
  type        = string
  description = "Hetzner Cloud API token"
  sensitive   = true
  # get default from environment variable HCLOUD_TOKEN
  default = null
}

variable "inwx_username" {
  type        = string
  description = "INWX API username"
  sensitive   = false
}

variable "inwx_password" {
  type        = string
  description = "INWX API password"
  sensitive   = true
}

variable "inwx_mobile_tan" {
  type        = string
  description = "INWX API mobile TAN"
  sensitive   = true
}

variable "ssh_public_key_name" {
  type        = string
  description = "SSH public key name"
  sensitive   = false
  default     = "default"
}

variable "ssh_public_key" {
  type        = string
  description = "SSH public key"
  sensitive   = false
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDCBMdl3Z8zgAUVF5AeY8hz3vcnkrJ+dPh3yYIKGm2ZO"
}
