terraform {
  required_providers {
    snowflake = {
      source  = "Snowflakedb/snowflake"
      version = "~> 0.73.0"
    }
  }
}
provider "snowflake" {}

module "warehouse" {
  source = "./warehouse"
  new_warehouses = var.new_warehouses
  providers = {
    snowflake = snowflake
  }
}
