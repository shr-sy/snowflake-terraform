terraform {
  required_providers {
    snowflake = {
      source  = "snowflake-labs/snowflake"
      version = ">= 1.0.0"
    }
  }
}

resource "snowflake_user" "prod_user" {
  name         = "PROD_USER"
  password     = "ProdPass123!"
  default_role = "PROD_ROLE"
  disabled     = false
}
