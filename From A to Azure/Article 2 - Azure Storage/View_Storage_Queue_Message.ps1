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

# Set the amount of time you want to entry to be invisible after read from the queue
# If it is not deleted by the end of this time, it will show up in the queue again
$invisibleTimeout = [System.TimeSpan]::FromSeconds(10)

# Read the message from the queue, then show the contents of the message. Read the other two messages, too.
$queueMessage = $queue.CloudQueue.GetMessageAsync($invisibleTimeout,$null,$null)
$queueMessage.Result

$queueMessage = $queue.CloudQueue.GetMessageAsync($invisibleTimeout,$null,$null)
$queueMessage.Result

# After 10 seconds, these messages reappear on the queue.