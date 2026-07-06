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
    schema_column = optional(object({
      description = optional(string)
      name        = string
      type        = optional(string)
    }))
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
        v.schema_column == null || (length(v.schema_column.name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_dataset_cosmosdb_sqlapis : (
        v.schema_column == null || (v.schema_column.type == null || (contains(["Byte", "Byte[]", "Boolean", "Date", "DateTime", "DateTimeOffset", "Decimal", "Double", "Guid", "Int16", "Int32", "Int64", "Single", "String", "TimeSpan"], v.schema_column.type)))
      )
    ])
    error_message = "must be one of: Byte, Byte[], Boolean, Date, DateTime, DateTimeOffset, Decimal, Double, Guid, Int16, Int32, Int64, Single, String, TimeSpan"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_dataset_cosmosdb_sqlapis : (
        v.schema_column == null || (v.schema_column.description == null || (length(v.schema_column.description) > 0))
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_data_factory_dataset_cosmosdb_sqlapi's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.LinkedServiceDatasetName] regexp.MustCompile(`^[-.+?/<>*%&:\\]+$`).MatchString(value)
  # path: data_factory_id
  #   source:    [from factories.ValidateFactoryID] !ok
  # path: data_factory_id
  #   source:    [from factories.ValidateFactoryID] err != nil
}

