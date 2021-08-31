## Connect to Azure
Connect-AzAccount

## List All Network Security Groups
Get-AzNetworkSecurityGroup

## Create Rule
Get-AzNetworkSecurityGroup -name "NSG_Name" -ResourceGroupName "RG_Name" | Add-AzNetworkSecurityRuleConfig -Name "Allow-RDP" -Description "Allow RDP" -Access "Allow" -Protocol "Tcp" -Direction "Inbound" -Priority 100 -SourceAddressPrefix "Internet" -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 3389 | Set-AzNetworkSecurityGroup

## Remove Rule
Get-AzNetworkSecurityGroup -name "NSG_Name" -ResourceGroupName "RG_Name" | Remove-AzNetworkSecurityRuleConfig -Name "Allow-RDP" | Set-AzNetworkSecurityGroup
