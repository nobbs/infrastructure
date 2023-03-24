resource "inwx_domain_contact" "default" {
  type           = "PERSON"
  name           = "Alexej Disterhoft"
  street_address = "Annemarie-Renger-Str. 7a"
  city           = "Mainz"
  postal_code    = "55130"
  state_province = "RP"
  country_code   = "DE"
  email          = "alexej@disterhoft.de"
  phone_number   = "+49.1781870589"
}

# inwx_domain_contact.inwx:
resource "inwx_domain_contact" "inwx" {
  type           = "ROLE"
  organization   = "INWX GmbH"
  name           = "Hostmaster Of The Day"
  remarks        = "role account for Hostmaster of The Day"
  street_address = "Prinzessinnenstr. 30"
  city           = "Berlin"
  postal_code    = "10969"
  state_province = "BE"
  country_code   = "DE"
  email          = "hostmaster@inwx.de"
  fax            = "+49.3098321290"
  phone_number   = "+49.309832120"
}

resource "inwx_domain" "default" {
  name = "nobbs.eu"
  nameservers = [
    "ns.inwx.de",
    "ns2.inwx.de",
    "ns3.inwx.eu",
  ]
  period        = "1Y"
  renewal_mode  = "AUTORENEW"
  transfer_lock = true

  contacts {
    registrant = inwx_domain_contact.default.id
    admin      = inwx_domain_contact.default.id
    tech       = inwx_domain_contact.inwx.id
    billing    = inwx_domain_contact.inwx.id
  }
}
