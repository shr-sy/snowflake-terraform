terraform {
  required_providers {
    snowflake = {
      source  = "Snowflakedb/snowflake"
      version = "~> 0.73.0"
    }
  }
}

provider "snowflake" {
  account  = "${var.SNOWFLAKE_ORGANIZATION_NAME}-${var.SNOWFLAKE_ACCOUNT_NAME}.ap-south-1.aws"
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
