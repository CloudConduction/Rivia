## Interactive method of parameterizing credentials
$cred = Get-Credential -Message "Enter a username and password for the virtual machine."

## Create PowerShell object with all settings necessary for the Virtual Machine
$vmParams = @{
  ResourceGroupName = 'RG_Name'
  Name = 'VM_Name'
  Location = 'Location'
  ImageName = 'Win2016Datacenter'
  PublicIpAddressName = 'PIP_Name'
  Credential = $cred
  OpenPorts = 3389
  Size = 'Standard_B1s'
}

## Create Virtual Machine
$newVM1 = New-AzVM @vmParams