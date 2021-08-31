## Set Parameters to get the existing storage account
$saParams = @{
  ResourceGroupName ='RG_Name'
  Name = 'storageaccountname'
}

## Get the context of the existing Storage Account
$StorageAccount= Get-AzStorageAccount @saParams
$StorageAccountContext = $StorageAccount.Context

## Set parameters for the container
## Blob represents the path/name of the file when uploaded
$ContainerUpload =@{
  Container = 'blobcontainername'
  File = 'C:\Rivia\Sample Document.txt'
  Blob = 'Documents\Sample.txt'
  Context = $StorageAccountContext
}

## Upload the file to the container
Set-AzStorageBlobContent @ContainerUpload