terraform {
  cloud {
    organization = "infrastructure-nobbs"

    workspaces {
      name = "infrastructure"
    }
  }

  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.36.2"
    }
    inwx = {
      source  = "inwx/inwx"
      version = "1.3.0"
    }
  }
}
