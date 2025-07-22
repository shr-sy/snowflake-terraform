terraform {
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = ">= 0.27.0"
    }
  }

  cloud {
    organization = "Exercises"

    workspaces {
      name = "snowflake-terraform"
    }
  }
}

provider "snowflake" {}

module "users" {
  source = "./users"
}

module "roles" {
  source = "./roles"
}

module "policies" {
  source = "./policies"
}

module "warehouse" {
  source = "./warehouse"
}
