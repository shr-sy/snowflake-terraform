resource "snowflake_user" "dev_user" {
  name     = "DEV_USER"
  password = "DevUser@123"
  comment  = "Developer user"
  disabled = false
}
