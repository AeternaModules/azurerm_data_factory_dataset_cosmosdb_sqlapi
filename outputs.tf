output "data_factory_dataset_cosmosdb_sqlapis" {
  description = "All data_factory_dataset_cosmosdb_sqlapi resources"
  value       = azurerm_data_factory_dataset_cosmosdb_sqlapi.data_factory_dataset_cosmosdb_sqlapis
}
output "data_factory_dataset_cosmosdb_sqlapis_additional_properties" {
  description = "List of additional_properties values across all data_factory_dataset_cosmosdb_sqlapis"
  value       = [for k, v in azurerm_data_factory_dataset_cosmosdb_sqlapi.data_factory_dataset_cosmosdb_sqlapis : v.additional_properties]
}
output "data_factory_dataset_cosmosdb_sqlapis_annotations" {
  description = "List of annotations values across all data_factory_dataset_cosmosdb_sqlapis"
  value       = [for k, v in azurerm_data_factory_dataset_cosmosdb_sqlapi.data_factory_dataset_cosmosdb_sqlapis : v.annotations]
}
output "data_factory_dataset_cosmosdb_sqlapis_collection_name" {
  description = "List of collection_name values across all data_factory_dataset_cosmosdb_sqlapis"
  value       = [for k, v in azurerm_data_factory_dataset_cosmosdb_sqlapi.data_factory_dataset_cosmosdb_sqlapis : v.collection_name]
}
output "data_factory_dataset_cosmosdb_sqlapis_data_factory_id" {
  description = "List of data_factory_id values across all data_factory_dataset_cosmosdb_sqlapis"
  value       = [for k, v in azurerm_data_factory_dataset_cosmosdb_sqlapi.data_factory_dataset_cosmosdb_sqlapis : v.data_factory_id]
}
output "data_factory_dataset_cosmosdb_sqlapis_description" {
  description = "List of description values across all data_factory_dataset_cosmosdb_sqlapis"
  value       = [for k, v in azurerm_data_factory_dataset_cosmosdb_sqlapi.data_factory_dataset_cosmosdb_sqlapis : v.description]
}
output "data_factory_dataset_cosmosdb_sqlapis_folder" {
  description = "List of folder values across all data_factory_dataset_cosmosdb_sqlapis"
  value       = [for k, v in azurerm_data_factory_dataset_cosmosdb_sqlapi.data_factory_dataset_cosmosdb_sqlapis : v.folder]
}
output "data_factory_dataset_cosmosdb_sqlapis_linked_service_name" {
  description = "List of linked_service_name values across all data_factory_dataset_cosmosdb_sqlapis"
  value       = [for k, v in azurerm_data_factory_dataset_cosmosdb_sqlapi.data_factory_dataset_cosmosdb_sqlapis : v.linked_service_name]
}
output "data_factory_dataset_cosmosdb_sqlapis_name" {
  description = "List of name values across all data_factory_dataset_cosmosdb_sqlapis"
  value       = [for k, v in azurerm_data_factory_dataset_cosmosdb_sqlapi.data_factory_dataset_cosmosdb_sqlapis : v.name]
}
output "data_factory_dataset_cosmosdb_sqlapis_parameters" {
  description = "List of parameters values across all data_factory_dataset_cosmosdb_sqlapis"
  value       = [for k, v in azurerm_data_factory_dataset_cosmosdb_sqlapi.data_factory_dataset_cosmosdb_sqlapis : v.parameters]
}
output "data_factory_dataset_cosmosdb_sqlapis_schema_column" {
  description = "List of schema_column values across all data_factory_dataset_cosmosdb_sqlapis"
  value       = [for k, v in azurerm_data_factory_dataset_cosmosdb_sqlapi.data_factory_dataset_cosmosdb_sqlapis : v.schema_column]
}

