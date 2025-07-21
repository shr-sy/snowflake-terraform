resource "snowflake_user" "qa_user" {
  name         = "QA_USER"
  password     = "QaPass123!"
  default_role = "QA_ROLE"
  disabled     = false
}
