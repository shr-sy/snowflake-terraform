resource "snowflake_masking_policy" "email_mask" {
  name               = "EMAIL_MASK"
  database           = "MY_DB"
  schema             = "PUBLIC"
  expression         = "CASE WHEN CURRENT_ROLE() IN ('DEV_ROLE') THEN val ELSE 'MASKED' END"
  return_data_type   = "STRING"
  value_data_type    = "STRING"
}
