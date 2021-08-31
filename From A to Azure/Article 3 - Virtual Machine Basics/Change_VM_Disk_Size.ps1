## Get Disks
Get-AzDisk

## Disk Parameters
$vmDiskName = 'Disk_Name'
$resourceGroup = "RG_Name"
$diskSize = 1124

## Get Disk
$vmDisk = Get-AzDisk -ResourceGroupName $resourceGroup -Name $vmDiskName 

## Set new disk size
$vmDisk.DiskSizeGB = $diskSize

## Update Azure with new Disk Size (Cannot be scaled downwards, only upwards)
Update-AzDisk -ResourceGroupName $resourceGroup `
-Disk $vmDisk `
-DiskName $vmDisk.Name
