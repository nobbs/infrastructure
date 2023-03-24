provider "hcloud" {
  token = var.hcloud_token
}

provider "inwx" {
  username = var.inwx_username
  password = var.inwx_password
  tan      = var.inwx_mobile_tan
}
