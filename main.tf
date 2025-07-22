terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.73.0"
    }
  }
}

provider "snowflake" {}

module "warehouse" {
  source = "./warehouse"
  providers = {
    snowflake = snowflake
  }
}
