provider "cloudflare" {
  retries = 3
  api_client_logging = true
  # CLOUDFLARE_API_KEY from environment
  # CLOUDFLARE_EMAIL from environment
}

variable "zone_id" {
  default = "3c1de2a3c9c1e2410436b346819015b9"
}

variable "domain" {
  default = "softwartechnik.de"
}

resource "cloudflare_record" "www" {
  zone_id = var.zone_id
  name    = "test"
  value   = "1.1.1.1"
  type    = "A"
  proxied = false
}
