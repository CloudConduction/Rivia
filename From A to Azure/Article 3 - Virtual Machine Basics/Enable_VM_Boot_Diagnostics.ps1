## Create Storage Account for Diagnostic Logs
New-AzStorageAccount -ResourceGroupName "RG_Name" `
    -Name "storageaccountname" `
    -Location "EastUS" `
    -SkuName "Standard_LRS"

## SKUs
## Standard_LRS Locally-redundant storage
## Standard_ZRS Zone-redundant storage
## Standard_GRS Geo-redundant storage
## Standard_RAGRS   Read access geo-redundant storage
## Premium_LRS  Premium locally-redundant storage
## Premium_ZRS  Premium zone-redundant storage

$VM = Get-AzVM -ResourceGroupName "RG_Name" -Name "VM_Name"
Set-AzVMBootDiagnostic -VM $VM -Enable -ResourceGroupName "RG_Name" -StorageAccountName " storageaccountname"
Update-AzVM -VM $VM -ResourceGroupName "RG_Name"
