data "snowflake_warehouse" "existing_warehouse" {
  name = "COMPUTE_WH"
}

output "existing_warehouse_info" {
  value = {
    name           = data.snowflake_warehouse.existing_warehouse.name
    size           = data.snowflake_warehouse.existing_warehouse.size
    auto_suspend   = data.snowflake_warehouse.existing_warehouse.auto_suspend
    auto_resume    = data.snowflake_warehouse.existing_warehouse.auto_resume
  }
}
