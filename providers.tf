terraform {
  required_providers {
    gitlab = {
      source = "gitlabhq/gitlab"
      version = "16.5.0"
    }
  }
  required_version = "1.6.3"
}

provider "gitlab" {
  token    = var.token
  base_url = var.base_url
}

