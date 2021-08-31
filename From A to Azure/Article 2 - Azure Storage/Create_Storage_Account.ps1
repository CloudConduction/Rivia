## Create PowerShell object with all settings necessary for the Storage Account
$saParams = @{
  ResourceGroupName = 'RG_Name'
  Name = 'storageaccountname'
  Location = 'Location'
  SkuName = 'Standard_LRS'
  Kind = 'StorageV2'
  AccessTier = 'Hot'
  AllowBlobPublicAccess = $true
  EnableHttpsTrafficOnly = $true
  EnableHierarchicalNamespace = $true
  MinimumTlsVersion = 'TLS1_2'
}

## Create Storage
$newSA1 = New-AzStorageAccount @saParams