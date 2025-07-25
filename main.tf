terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.73.0"
    }
  }
}

provider "snowflake" {
  alias    = "default"
  account  = var.SNOWFLAKE_ACCOUNT
  username = var.SNOWFLAKE_USERNAME
  password = var.SNOWFLAKE_PASSWORD
  role     = var.SNOWFLAKE_ROLE
}

module "warehouse" {
  source           = "./warehouse"
  new_warehouses   = var.new_warehouses
  warehouse_owners = var.warehouse_owners
}

module "users" {
  source         = "./users"
  usernames      = var.usernames
  user_passwords = var.user_passwords
}

module "role" {
  source      = "./role"
  role_list   = var.role_list
  role_owners = var.role_owners
}
