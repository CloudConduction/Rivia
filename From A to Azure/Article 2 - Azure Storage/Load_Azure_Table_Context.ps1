$saParams = @{
  ResourceGroupName ='RG_Name'
  Name = 'storageaccountname'
}

## Get the context of the existing Storage Account
$StorageAccount= Get-AzStorageAccount @saParams
$StorageAccountContext = $StorageAccount.Context

$TableParams = @{
  Name = 'tablestoragename'
  Context = $StorageAccountContext
}

$cloudTable = (Get-AzStorageTable @TableParams).CloudTable