terraform {
  required_providers {
    snowflake = {
      source  = "snowflake-labs/snowflake"
      version = ">= 1.0.0"
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

module "warehouse_import" {
  source = "./warehouse"
}
