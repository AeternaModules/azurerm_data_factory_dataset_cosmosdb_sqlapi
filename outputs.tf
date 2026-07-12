output "data_factory_dataset_cosmosdb_sqlapis_id" {
  description = "Map of id values across all data_factory_dataset_cosmosdb_sqlapis, keyed the same as var.data_factory_dataset_cosmosdb_sqlapis"
  value       = { for k, v in azurerm_data_factory_dataset_cosmosdb_sqlapi.data_factory_dataset_cosmosdb_sqlapis : k => v.id }
}
output "data_factory_dataset_cosmosdb_sqlapis_additional_properties" {
  description = "Map of additional_properties values across all data_factory_dataset_cosmosdb_sqlapis, keyed the same as var.data_factory_dataset_cosmosdb_sqlapis"
  value       = { for k, v in azurerm_data_factory_dataset_cosmosdb_sqlapi.data_factory_dataset_cosmosdb_sqlapis : k => v.additional_properties }
}
output "data_factory_dataset_cosmosdb_sqlapis_annotations" {
  description = "Map of annotations values across all data_factory_dataset_cosmosdb_sqlapis, keyed the same as var.data_factory_dataset_cosmosdb_sqlapis"
  value       = { for k, v in azurerm_data_factory_dataset_cosmosdb_sqlapi.data_factory_dataset_cosmosdb_sqlapis : k => v.annotations }
}
output "data_factory_dataset_cosmosdb_sqlapis_collection_name" {
  description = "Map of collection_name values across all data_factory_dataset_cosmosdb_sqlapis, keyed the same as var.data_factory_dataset_cosmosdb_sqlapis"
  value       = { for k, v in azurerm_data_factory_dataset_cosmosdb_sqlapi.data_factory_dataset_cosmosdb_sqlapis : k => v.collection_name }
}
output "data_factory_dataset_cosmosdb_sqlapis_data_factory_id" {
  description = "Map of data_factory_id values across all data_factory_dataset_cosmosdb_sqlapis, keyed the same as var.data_factory_dataset_cosmosdb_sqlapis"
  value       = { for k, v in azurerm_data_factory_dataset_cosmosdb_sqlapi.data_factory_dataset_cosmosdb_sqlapis : k => v.data_factory_id }
}
output "data_factory_dataset_cosmosdb_sqlapis_description" {
  description = "Map of description values across all data_factory_dataset_cosmosdb_sqlapis, keyed the same as var.data_factory_dataset_cosmosdb_sqlapis"
  value       = { for k, v in azurerm_data_factory_dataset_cosmosdb_sqlapi.data_factory_dataset_cosmosdb_sqlapis : k => v.description }
}
output "data_factory_dataset_cosmosdb_sqlapis_folder" {
  description = "Map of folder values across all data_factory_dataset_cosmosdb_sqlapis, keyed the same as var.data_factory_dataset_cosmosdb_sqlapis"
  value       = { for k, v in azurerm_data_factory_dataset_cosmosdb_sqlapi.data_factory_dataset_cosmosdb_sqlapis : k => v.folder }
}
output "data_factory_dataset_cosmosdb_sqlapis_linked_service_name" {
  description = "Map of linked_service_name values across all data_factory_dataset_cosmosdb_sqlapis, keyed the same as var.data_factory_dataset_cosmosdb_sqlapis"
  value       = { for k, v in azurerm_data_factory_dataset_cosmosdb_sqlapi.data_factory_dataset_cosmosdb_sqlapis : k => v.linked_service_name }
}
output "data_factory_dataset_cosmosdb_sqlapis_name" {
  description = "Map of name values across all data_factory_dataset_cosmosdb_sqlapis, keyed the same as var.data_factory_dataset_cosmosdb_sqlapis"
  value       = { for k, v in azurerm_data_factory_dataset_cosmosdb_sqlapi.data_factory_dataset_cosmosdb_sqlapis : k => v.name }
}
output "data_factory_dataset_cosmosdb_sqlapis_parameters" {
  description = "Map of parameters values across all data_factory_dataset_cosmosdb_sqlapis, keyed the same as var.data_factory_dataset_cosmosdb_sqlapis"
  value       = { for k, v in azurerm_data_factory_dataset_cosmosdb_sqlapi.data_factory_dataset_cosmosdb_sqlapis : k => v.parameters }
}
output "data_factory_dataset_cosmosdb_sqlapis_schema_column" {
  description = "Map of schema_column values across all data_factory_dataset_cosmosdb_sqlapis, keyed the same as var.data_factory_dataset_cosmosdb_sqlapis"
  value       = { for k, v in azurerm_data_factory_dataset_cosmosdb_sqlapi.data_factory_dataset_cosmosdb_sqlapis : k => v.schema_column }
}

