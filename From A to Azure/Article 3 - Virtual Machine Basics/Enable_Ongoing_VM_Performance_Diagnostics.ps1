## VM Performance Diagnostics Parameters
$vm_resourcegroup = "RG_Name"
$vm_name = "VM_Name"
$diagnosticsconfig_path = "C:\Rivia\DiagnosticsPubConfig.xml"
$diagnosticsstorage_name = "storageaccountname"

## You will need to edit the VM Resource ID and Storage Account Name in the XML document provided for this to work

## Enable Performance Diagnostics
Set-AzVMDiagnosticsExtension -ResourceGroupName $vm_resourcegroup -VMName $vm_name -DiagnosticsConfigurationPath $diagnosticsconfig_path -StorageAccountName $diagnosticsstorage_name 
