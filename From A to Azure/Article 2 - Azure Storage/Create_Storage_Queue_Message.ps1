## Set Parameters to get the existing storage account
$saParams = @{
  ResourceGroupName ='RG_Name'
  Name = 'storageaccountname'
}

## Get the context of the existing Storage Account
$StorageAccount= Get-AzStorageAccount @saParams
$StorageAccountContext = $StorageAccount.Context

## Set Queue parameters
$QueueParams = @{
  Name = 'storagequeuename'
  Context = $StorageAccountContext
}

## Load the Queue into context
$queue = Get-AzStorageQueue @QueueParams

## Create a new message object
$queueMessage = [Microsoft.Azure.Storage.Queue.CloudQueueMessage]::new("Hello world! - PowerShell")

## Submit the message object to the queue
$queue.CloudQueue.AddMessageAsync($QueueMessage)