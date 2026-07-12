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
  # path: linked_service_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: collection_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: description
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: folder
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: schema_column.name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: schema_column.type
  #   condition: contains(["Byte", "Byte[]", "Boolean", "Date", "DateTime", "DateTimeOffset", "Decimal", "Double", "Guid", "Int16", "Int32", "Int64", "Single", "String", "TimeSpan"], value)
  #   message:   must be one of: Byte, Byte[], Boolean, Date, DateTime, DateTimeOffset, Decimal, Double, Guid, Int16, Int32, Int64, Single, String, TimeSpan
  # path: schema_column.description
  #   condition: length(value) > 0
  #   message:   must not be empty
}

