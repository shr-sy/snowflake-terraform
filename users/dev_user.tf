resource "snowflake_user" "dev_user" {
  name         = "DEV_USER"
  password     = "DevPass123!"
  default_role = "DEV_ROLE"
  disabled     = false
}
