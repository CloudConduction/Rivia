## NSG Parameters
$NSG = Get-AzNetworkSecurityGroup -name "NSG_Name" -ResourceGroupName "RG_Name" 

## Dissociate NSG to Network Adapter
$NIC = Get-AzNetworkInterface -name "NIC_Name" 
$NIC.NetworkSecurityGroup = $null
$NIC | Set-AzNetworkInterface

## Associate NSG to Network Adapter
$NIC = Get-AzNetworkInterface -name "NIC_Name" 
$NIC.NetworkSecurityGroup = $NSG
$NIC | Set-AzNetworkInterface

## Dissociate NSG to Subnet
$VNet = Get-AzVirtualNetwork -name "Vnet_Name"
$Subnet = Get-AzVirtualNetworkSubnetConfig -VirtualNetwork $VNet -Name "Subnet_Name "
$Subnet.NetworkSecurityGroup = $null
Set-AzVirtualNetwork -VirtualNetwork $VNet

## Associate NSG to Subnet
$VNet = Get-AzVirtualNetwork -name "Vnet_Name"
$Subnet = Get-AzVirtualNetworkSubnetConfig -VirtualNetwork $VNet -Name "Subnet_Name"
$Subnet.NetworkSecurityGroup = $NSG
Set-AzVirtualNetwork -VirtualNetwork $VNet
