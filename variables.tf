# Snowflake Connection Variables
variable "SNOWFLAKE_ACCOUNT_NAME" {
  description = "Snowflake account name"
  type        = string
}

variable "SNOWFLAKE_ORGANIZATION_NAME" {
  description = "Snowflake organization name"
  type        = string
}

variable "SNOWFLAKE_ROLE" {
  description = "Snowflake role for Terraform operations"
  type        = string
}

variable "SNOWFLAKE_USER" {
  description = "Snowflake user for Terraform operations"
  type        = string
}

variable "SNOWFLAKE_PASSWORD" {
  description = "Snowflake password for Terraform operations"
  type        = string
  sensitive   = true
}

variable "new_warehouses" {
  description = "Map of new warehouses to be created by Terraform"
  type        = map(string)
}


