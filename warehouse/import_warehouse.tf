terraform {
  required_providers {
    snowflake = {
      source  = "snowflake-labs/snowflake"
      version = ">= 1.0.0"
    }
  }
}

resource "snowflake_warehouse" "prod_wh" {
  name = "PROD_WH"
}
