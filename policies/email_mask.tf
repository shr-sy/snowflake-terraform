resource "snowflake_masking_policy" "email_mask" {
  name              = "EMAIL_MASK"
  database          = "YOUR_DB"
  schema            = "YOUR_SCHEMA"
  input_data_type   = "VARCHAR"
  return_data_type  = "VARCHAR"
  expression        = "CASE WHEN CURRENT_ROLE() IN ('SYSADMIN') THEN val ELSE '***@***.com' END"
}
