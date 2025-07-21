resource "snowflake_role" "prod_role" {
  name = "PROD_ROLE"
}

resource "snowflake_role_grants" "prod_grant_user" {
  role_name = snowflake_role.prod_role.name
  users     = [snowflake_user.prod_user.name]
}
