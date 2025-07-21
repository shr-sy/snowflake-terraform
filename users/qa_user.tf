terraform {
  required_providers {
    snowflake = {
      source  = "snowflake-labs/snowflake"
      version = ">= 1.0.0"
    }
  }
}

resource "snowflake_user" "qa_user" {
  name         = "QA_USER"
  password     = "QaPass123!"
  default_role = "QA_ROLE"
  disabled     = false
}
