resource "snowflake_role" "qa_role" {
  name = "QA_ROLE"
}

resource "snowflake_role_grants" "qa_grant_user" {
  role_name = snowflake_role.qa_role.name
  users     = [snowflake_user.qa_user.name]
}
