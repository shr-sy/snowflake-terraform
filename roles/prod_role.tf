terraform {
  required_providers {
    snowflake = {
      source  = "snowflake-labs/snowflake"
      version = ">= 1.0.0"
    }
  }
}

resource "snowflake_role" "prod_role" {
  name = "PROD_ROLE"
}

