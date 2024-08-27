terraform {
  required_version = "~> 1.0"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      // Allow both 4.x and 5.x while we upgrade everything to 5.x.
      version = ">= 4.20, < 6"
    }
    fastly = {
      source  = "fastly/fastly"
      version = "5.13.0"
    }
  }
}
