resource "snowflake_user" "prod_user" {
  name         = "PROD_USER"
  password     = "ProdPass123!"
  default_role = "PROD_ROLE"
  disabled     = false
}
