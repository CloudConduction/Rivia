## Set Parameters to get the existing storage account
$saParams = @{
  ResourceGroupName ='RG_Name'
  Name = 'storageaccountname'
}

## Get the context of the existing Storage Account
$StorageAccount= Get-AzStorageAccount @saParams
$StorageAccountContext = $StorageAccount.Context

## Set parameters of the Storage Queue
$TableParams = @{
  Name = 'storagequeuename'
  Context = $StorageAccountContext
}

## Create the Storage Queue
New-AzStorageQueue @TableParams