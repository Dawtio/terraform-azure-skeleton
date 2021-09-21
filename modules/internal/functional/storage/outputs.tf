output "storage_accounts" {
  description = "The Storage Accounts resources."
  value       = {
    "asatoto" : module.storage_accounts["asatoto"].this,
    "asatata" : module.storage_accounts["asatata"].this,
  }
}