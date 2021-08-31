$SubName = "Sub_Name" 
$RgName = "RG_Name" 
$VmName = "VM_Name " 
$Location = "eastUS" 

Select-AzSubscription -SubscriptionName $SubName
Set-AzVMAccessExtension -ResourceGroupName $RgName -Location $Location -VMName $VmName -Credential (get-credential) -typeHandlerVersion "2.0" -Name VMAccessAgent
