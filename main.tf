locals {
  dns_zones = {
    for zone in var.dns_zones : zone => zone
  }
}

resource "cloudflare_record" "issue_letsencrypt" {
  for_each = local.dns_zones

  zone_id         = data.cloudflare_zone.this.id
  ttl             = 60
  allow_overwrite = true

  name = split(".${var.top_level_zone}", each.value)[0]
  type = "CAA"

  data {
    flags = "0"
    tag   = "issue"
    value = "letsencrypt.org"
  }
}

resource "cloudflare_record" "issuewild_letsencrypt" {
  for_each = local.dns_zones

  zone_id         = data.cloudflare_zone.this.id
  ttl             = 60
  allow_overwrite = true

  name = split(".${var.top_level_zone}", each.value)[0]
  type = "CAA"

  data {
    flags = "0"
    tag   = "issuewild"
    value = "letsencrypt.org"
  }
}

resource "cloudflare_record" "issue_amazoncom" {
  for_each = local.dns_zones

  zone_id         = data.cloudflare_zone.this.id
  ttl             = 60
  allow_overwrite = true

  name = split(".${var.top_level_zone}", each.value)[0]
  type = "CAA"

  data {
    flags = "0"
    tag   = "issue"
    value = "amazon.com"
  }
}

resource "cloudflare_record" "issuewild_amazoncom" {
  for_each = local.dns_zones

  zone_id         = data.cloudflare_zone.this.id
  ttl             = 60
  allow_overwrite = true

  name = split(".${var.top_level_zone}", each.value)[0]
  type = "CAA"

  data {
    flags = "0"
    tag   = "issuewild"
    value = "amazon.com"
  }
}

resource "cloudflare_record" "issue_amazontrustcom" {
  for_each = local.dns_zones

  zone_id         = data.cloudflare_zone.this.id
  ttl             = 60
  allow_overwrite = true

  name = split(".${var.top_level_zone}", each.value)[0]
  type = "CAA"

  data {
    flags = "0"
    tag   = "issue"
    value = "amazontrust.com"
  }
}

resource "cloudflare_record" "issuewild_amazontrustcom" {
  for_each = local.dns_zones

  zone_id         = data.cloudflare_zone.this.id
  ttl             = 60
  allow_overwrite = true

  name = split(".${var.top_level_zone}", each.value)[0]
  type = "CAA"

  data {
    flags = "0"
    tag   = "issuewild"
    value = "amazontrust.com"
  }
}

resource "cloudflare_record" "issue_awstrustcom" {
  for_each = local.dns_zones

  zone_id         = data.cloudflare_zone.this.id
  ttl             = 60
  allow_overwrite = true

  name = split(".${var.top_level_zone}", each.value)[0]
  type = "CAA"

  data {
    flags = "0"
    tag   = "issue"
    value = "awstrust.com"
  }
}

resource "cloudflare_record" "issuewild_awstrustcom" {
  for_each = local.dns_zones

  zone_id         = data.cloudflare_zone.this.id
  ttl             = 60
  allow_overwrite = true

  name = split(".${var.top_level_zone}", each.value)[0]
  type = "CAA"

  data {
    flags = "0"
    tag   = "issuewild"
    value = "awstrust.com"
  }
}

resource "cloudflare_record" "issue_amazonawscom" {
  for_each = local.dns_zones

  zone_id         = data.cloudflare_zone.this.id
  ttl             = 60
  allow_overwrite = true

  name = split(".${var.top_level_zone}", each.value)[0]
  type = "CAA"

  data {
    flags = "0"
    tag   = "issue"
    value = "amazonaws.com"
  }
}

resource "cloudflare_record" "issuewild_amazonawscom" {
  for_each = local.dns_zones

  zone_id         = data.cloudflare_zone.this.id
  ttl             = 60
  allow_overwrite = true

  name = split(".${var.top_level_zone}", each.value)[0]
  type = "CAA"

  data {
    flags = "0"
    tag   = "issuewild"
    value = "amazonaws.com"
  }
}

data "cloudflare_zone" "this" {
  name = var.top_level_zone
}
