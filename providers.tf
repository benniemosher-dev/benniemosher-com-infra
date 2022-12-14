terraform {
  required_version = "~> 1.3"

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.0"
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
