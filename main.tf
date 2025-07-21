terraform {
  required_providers {
    snowflake = {
      source  = "snowflake-labs/snowflake"
      version = ">= 1.0.0"
    }
  }

  cloud {
    organization = "your_hcp_organization_name"

    workspaces {
      name = "your_workspace_name"
    }
  }
}

provider "snowflake" {
  account_name = env.SNOWFLAKE_ACCOUNT_NAME
  login_name   = env.SNOWFLAKE_USER
  password     = env.SNOWFLAKE_PASSWORD
  role         = env.SNOWFLAKE_ROLE
}

module "users" {
  source = "./users"
}

module "roles" {
  source = "./roles"
}

module "policies" {
  source = "./policies"
}

module "warehouse_import" {
  source = "./warehouse"
}
