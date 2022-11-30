variable "dns_zones" {
  type        = list(string)
  description = "Name of the DNS zones to create"
}

variable "top_level_zone" {
  type        = string
  description = "Name of the top level DNS zone"
}
