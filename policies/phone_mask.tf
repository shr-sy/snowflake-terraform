resource "snowflake_masking_policy" "phone_mask" {
  name              = "PHONE_MASK"
  database          = "YOUR_DB"
  schema            = "YOUR_SCHEMA"
  input_data_type   = "VARCHAR"
  return_data_type  = "VARCHAR"
  expression        = "CASE WHEN CURRENT_ROLE() IN ('SYSADMIN') THEN val ELSE '(***) ***-****' END"
}
