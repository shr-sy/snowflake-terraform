
resource "snowflake_masking_policy" "phone_mask" {
  name     = "PHONE_MASK"
  database = "YOUR_DB"
  schema   = "YOUR_SCHEMA"

  signature {
    column_names = ["phone"]
    column_types = ["VARCHAR"]
  }

  return_data_type = "VARCHAR"
  body = <<-SQL
    CASE
      WHEN CURRENT_ROLE() IN ('ACCOUNTADMIN', 'FULL_ACCESS') THEN phone
      ELSE 'XXXXXXXXXX'
    END
  SQL
}
