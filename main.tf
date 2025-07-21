
terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = ">= 0.56.0"
    }
  }

  backend "remote" {
    organization = "your-hcp-org-name"

    workspaces {
      name = "snowflake-terraform-ws"
    }
  }
}

provider "snowflake" {
  account  = env("SNOWFLAKE_ACCOUNT_NAME")
  username = env("SNOWFLAKE_USER")
  password = env("SNOWFLAKE_PASSWORD")
  role     = env("SNOWFLAKE_ROLE")
  region   = env("SNOWFLAKE_REGION")
}

# Load user modules
module "users" {
  source = "./users"
}

# Load role modules
module "roles" {
  source = "./roles"
}

# Load policy modules
module "policies" {
  source = "./policies"
}

# Optionally read warehouse details from Snowflake using a data source
module "warehouse_import" {
  source = "./warehouse"
}
