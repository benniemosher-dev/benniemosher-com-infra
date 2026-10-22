terraform {
  required_version = "1.17.0"

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "5.28.1"
    }
  }

  cloud {
    organization = "benniemosher-dev"
    workspaces {
      name = "benniemosher-com-infra"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare-config.api-token
}
