terraform {
  required_providers {
    snowflake = {
      source  = "snowflake-labs/snowflake"
      version = ">= 1.0.0"
    }
  }
}

resource "snowflake_masking_policy" "email_mask" {
  name     = "EMAIL_MASK"
  database = "YOUR_DB"
  schema   = "YOUR_SCHEMA"

  signature {
    column_names = ["email"]
    column_types = ["VARCHAR"]
  }

  return_data_type = "VARCHAR"
  body = <<-SQL
    CASE
      WHEN CURRENT_ROLE() IN ('ACCOUNTADMIN', 'FULL_ACCESS') THEN email
      ELSE '***MASKED***'
    END
  SQL
}
