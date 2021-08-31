## Set Parameters to get the existing storage account
$saParams = @{
  ResourceGroupName ='RG_Name'
  Name = 'storageaccountname'
}

## Get the context of the existing Storage Account
$StorageAccount= Get-AzStorageAccount @saParams
$StorageAccountContext = $StorageAccount.Context

## Set parameters of the Storage Table
$TableParams = @{
  Name = 'tablestoragename'
  Context = $StorageAccountContext
}

## Create the Storage Table
New-AzStorageTable @TableParams