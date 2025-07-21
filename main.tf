terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.69"
    }
  }

  backend "remote" {
    organization = "your-hcp-org-name"
    workspaces {
      name = "snowflake-core"
    }
  }
}

provider "snowflake" {
  # Uses these environment variables automatically:
  # SNOWFLAKE_ACCOUNT, SNOWFLAKE_USER, SNOWFLAKE_PASSWORD, etc.
}

# Load all user/role/policy .tf files (Terraform auto-loads from subfolders)
# No need for modules or explicit includes
