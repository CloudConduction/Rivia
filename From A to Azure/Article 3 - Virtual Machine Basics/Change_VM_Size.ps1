## Set parameters for VM operations
$resourceGroup = "RG-Name"
$vmName = "VM-Name"
$vm = Get-AzVM -ResourceGroupName $resourceGroup -VMName $vmName

## List available sizes for VM
Get-AzVMSize -ResourceGroupName $resourceGroup -VMName $vmName

## Stop the VM
$vm | Stop-AzureRmVM -Force -AsJob

## Resize the VM
$vm.HardwareProfile.VmSize = "Standard_B4ms"
Update-AzVM -VM $vm -ResourceGroupName $resourceGroup
