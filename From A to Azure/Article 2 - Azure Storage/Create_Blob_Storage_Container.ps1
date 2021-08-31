## Set Parameters to get the existing storage account
$saParams = @{
  ResourceGroupName ='RG_Name'
  Name = 'storageaccountname'
}

## Get the context of the existing Storage Account
$StorageAccount= Get-AzStorageAccount @saParams
$StorageAccountContext = $StorageAccount.Context

## Set parameters for new Storage Container
$saContainerParams = @{
  Name = 'blobcontainername'
  Permission = 'Container'
  Context = $StorageAccountContext
}

## Create a new storage container within the Storage Account context
New-AzStorageContainer @saContainerParams