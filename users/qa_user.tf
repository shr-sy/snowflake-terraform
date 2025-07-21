resource "snowflake_user" "qa_user" {
  name     = "QA_USER"
  password = "QaUser@123"
  comment  = "QA user"
  disabled = false
}
