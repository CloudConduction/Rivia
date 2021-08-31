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

# Set filter.
[string]$filter = `
[Microsoft.Azure.Cosmos.Table.TableQuery]::GenerateFilterCondition("username",`
[Microsoft.Azure.Cosmos.Table.QueryComparisons]::Equal,"Jessie2")

# Retrieve entity to be deleted, then pipe it into the remove cmdlet.
$userToDelete = Get-AzTableRow `
    -table $cloudTable `
    -customFilter $filter
$userToDelete | Remove-AzTableRow -table $cloudTable


# Retrieve entities from table and see that Jessie2 has been deleted.
Get-AzTableRow -table $cloudTable | ft

# Get all rows and pipe the result into the remove cmdlet to delete all entities.
Get-AzTableRow `
    -table $cloudTable | Remove-AzTableRow -table $cloudTable

# List entities in the table (there won't be any).
Get-AzTableRow -table $cloudTable | ft