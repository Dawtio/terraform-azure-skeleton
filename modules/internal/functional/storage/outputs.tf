output "storage_accounts" {
  description = "The Storage Accounts resources."
  value = {
    "dawtioasa" : module.storage_accounts["dawtioasa"].this,
  }
}
