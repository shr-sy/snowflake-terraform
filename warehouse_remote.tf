data "terraform_remote_state" "warehouse" {
  backend = "s3"
  config = {
    bucket = env("WAREHOUSE_STATE_BUCKET")
    key    = env("WAREHOUSE_STATE_KEY")
    region = env("WAREHOUSE_STATE_REGION")
  }
}

resource "snowflake_role_grants" "grant_wh_to_dev" {
  role_name  = snowflake_role.dev_role.name
  privileges = ["USAGE"]
  objects {
    object_type = "WAREHOUSE"
    object_name = data.terraform_remote_state.warehouse.outputs.warehouse_name
  }
}
