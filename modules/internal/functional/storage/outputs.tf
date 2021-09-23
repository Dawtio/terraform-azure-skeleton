output "storage_accounts" {
  description = "The Storage Accounts resources."
  value       = {
    "asa" : module.storage_accounts["asa"].this,
  }
}