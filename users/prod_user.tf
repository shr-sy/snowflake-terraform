resource "snowflake_user" "prod_user" {
  name     = "PROD_USER"
  password = "ProdUser@123"
  comment  = "Production user"
  disabled = false
}
