resource "snowflake_masking_policy" "phone_mask" {
  name               = "PHONE_MASK"
  database           = "MY_DB"
  schema             = "PUBLIC"
  expression         = "CASE WHEN CURRENT_ROLE() = 'PROD_ROLE' THEN val ELSE 'MASKED' END"
  return_data_type   = "STRING"
  value_data_type    = "STRING"
}
