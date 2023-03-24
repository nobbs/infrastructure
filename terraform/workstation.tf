resource "hcloud_server" "workstation" {
  name        = "workstation"
  server_type = "cpx21"
  image       = "ubuntu-22.04"

  location = "nbg1"

  ssh_keys  = [hcloud_ssh_key.default.id]
  user_data = file("${path.module}/config/cloud-init.yaml")
}

resource "inwx_nameserver_record" "workstation_default_a" {
  domain  = inwx_domain.default.name
  type    = "A"
  name    = "workstation"
  content = hcloud_server.workstation.ipv4_address
}

resource "inwx_nameserver_record" "workstation_default_aaaa" {
  domain  = inwx_domain.default.name
  type    = "AAAA"
  name    = "workstation"
  content = hcloud_server.workstation.ipv6_address
}
