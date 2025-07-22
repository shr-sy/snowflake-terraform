terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.73.0"
    }
  }
}

provider "snowflake" {
  account  = var.SNOWFLAKE_ACCOUNT_NAME
  organization = var.SNOWFLAKE_ORGANIZATION_NAME
  username = var.SNOWFLAKE_USER
  password = var.SNOWFLAKE_PASSWORD
  role     = var.SNOWFLAKE_ROLE
}

module "warehouse" {
  source = "./warehouse"
  new_warehouses = var.new_warehouses
  providers = {
    snowflake = snowflake
  }
}
