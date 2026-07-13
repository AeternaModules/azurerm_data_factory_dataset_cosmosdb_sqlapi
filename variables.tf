variable "data_factory_dataset_cosmosdb_sqlapis" {
  description = <<EOT
Map of data_factory_dataset_cosmosdb_sqlapis, attributes below
Required:
    - data_factory_id
    - linked_service_name
    - name
Optional:
    - additional_properties
    - annotations
    - collection_name
    - description
    - folder
    - parameters
    - schema_column (block):
        - description (optional)
        - name (required)
        - type (optional)
EOT

  type = map(object({
    data_factory_id       = string
    linked_service_name   = string
    name                  = string
    additional_properties = optional(map(string))
    annotations           = optional(list(string))
    collection_name       = optional(string)
    description           = optional(string)
    folder                = optional(string)
    parameters            = optional(map(string))
    schema_column = optional(list(object({
      description = optional(string)
      name        = string
      type        = optional(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.data_factory_dataset_cosmosdb_sqlapis : (
        length(v.linked_service_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_dataset_cosmosdb_sqlapis : (
        v.collection_name == null || (length(v.collection_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_dataset_cosmosdb_sqlapis : (
        v.description == null || (length(v.description) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_dataset_cosmosdb_sqlapis : (
        v.folder == null || (length(v.folder) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_dataset_cosmosdb_sqlapis : (
        v.schema_column == null || alltrue([for item in v.schema_column : (length(item.name) > 0)])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_dataset_cosmosdb_sqlapis : (
        v.schema_column == null || alltrue([for item in v.schema_column : (item.type == null || (contains(["Byte", "Byte[]", "Boolean", "Date", "DateTime", "DateTimeOffset", "Decimal", "Double", "Guid", "Int16", "Int32", "Int64", "Single", "String", "TimeSpan"], item.type)))])
      )
    ])
    error_message = "must be one of: Byte, Byte[], Boolean, Date, DateTime, DateTimeOffset, Decimal, Double, Guid, Int16, Int32, Int64, Single, String, TimeSpan"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_dataset_cosmosdb_sqlapis : (
        v.schema_column == null || alltrue([for item in v.schema_column : (item.description == null || (length(item.description) > 0))])
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

