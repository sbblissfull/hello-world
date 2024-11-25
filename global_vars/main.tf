locals {
  
  region_short = "eus"

   mgt_kv_id = "/subscriptions/7b45b9ac-8ee0-44d2-8efa-80ced4336ab2/resourceGroups/rg.keyvault.dev1/providers/Microsoft.KeyVault/vaults/keyvault-logiccapp-dev1"
object_ids = {
    # i guess these will be used when RBAC user is used to to access keyvault but i used service principal to get keyvault id
    #"dev1"        = "92e2af1d-efff-486d-8ff3-07febb4ce82f" # "AZ KEY VAULT OPS"
   
    
  }
}

output "tenant_id" {
  value = local.tenant_id
}


output "region_short" {
  value = {
    "eastus" = "eus"
    #"eastus2"       = "eus2"
    #"centralus"     = "cus"
    "westus" = "wus"
    #"westus2"       = "wus2"
    #"westeurope"    = "weu"
    #"northeurope"   = "neu"
    #"japaneast"     = "jpe"
    #"southeastasia" = "sea"
    "centralindia" = "cin"
    "southindia"   = "sin"
  }
}

output "mgt_kv_id" {
  value = local.mgt_kv_id
}

output "admin_user_secret" {
  value = "MachineAdminUsername"
}
output "admin_pw_secret" {
  value = "MachineAdminPassword"
}
