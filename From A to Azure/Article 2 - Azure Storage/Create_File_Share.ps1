## Set Parameters to get the existing storage account
$saParams = @{
  ResourceGroupName ='RG_Name'
  Name = 'storageaccountname'
}

## Get the context of the existing Storage Account
$StorageAccount= Get-AzStorageAccount @saParams
$StorageAccountContext = $StorageAccount.Context

## Set parameters of the File Share
## Currently lacking some parameter options that were available in the previous AzureRM, such as QuotaGiB and AccessTeir
$FileShareParams = @{
  Name = 'filesharename'
  Context = $StorageAccountContext
}

## Create the File Share
New-AzStorageShare @FileShareParams