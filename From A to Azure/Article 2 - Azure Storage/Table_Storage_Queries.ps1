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

## Query all the Table’s values
Get-AzTableRow -table $cloudTable | ft

## Query a Table’s specific partition values
Get-AzTableRow -table $cloudTable -partitionKey $partitionKey1 | ft

## Query a Table’s specific value within a specific column
Get-AzTableRow -table $cloudTable `
     -columnName "username" `
     -value "Chris" `
     -operator Equal

## Query a Table’s entities with a custom filter
Get-AzTableRow `
>>     -table $cloudTable `
>>     -customFilter "(userid eq 1)"