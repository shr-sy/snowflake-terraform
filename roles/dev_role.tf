resource "snowflake_role" "dev_role" {
  name = "DEV_ROLE"
}

resource "snowflake_role_grants" "assign_dev_user" {
  role_name = snowflake_role.dev_role.name
  users     = [snowflake_user.dev_user.name]
}
