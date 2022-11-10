// Configuration for Terraform itself.

terraform {
  required_version = "~> 1"

  required_providers {
    fastly = {
      source  = "fastly/fastly"
      version = "2.4.0"
    }
  }

  backend "s3" {
    bucket         = "rust-terraform"
    key            = "simpleinfra/team-members-fastly.tfstate"
    region         = "us-west-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}

provider "fastly" {
  api_key = var.fastly_api_key
}

variable "fastly_api_key" {
  description = "Personal API token for Fastly"
  type        = string
}
