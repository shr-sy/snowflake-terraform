terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.73.0"
    }
  }
}

resource "snowflake_role" "roles" {
  for_each = toset(var.role_list)

  name    = each.value
  comment = "Role created by Terraform"
}

resource "snowflake_role_ownership_grant" "role_ownership_transfer" {
  for_each      = var.role_owners

  on_role_name  = each.key         # Example: "stage_role"
  to_role_name  = each.value       # Example: "SECURITYADMIN"
}

