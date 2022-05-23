Login-AzAccount

Get-AzContext

Get-AzSubscription

Set-AzContext -Subscription "DSS Training7"

New-AzVirtualNetwork -ResourceGroupName ajay-20220410-rg -Name NANETNAISTAM -AddressPrefix 192.168.0.0/16

#to remove break changes error
Set-Item Env:\SuppressAzurePowerShellBreakingChangeWarnings "true"

#for new vnet creation

$rgName="ajay-20220410-rg"

$location="East US"

$vnet1 = New-AzVirtualNetwork -Name "Modal" -ResourceGroupName $rgName -Location $location -AddressPrefix "192.168.0.0/16"

Add-AzVirtualNetworkSubnetConfig -Name "Backend" -AddressPrefix "192.168.1.0/24" -VirtualNetwork $vnet1

Set-AzVirtualNetwork -VirtualNetwork $vnet1


#for existing vnet adding subnet

$vnet1 = Get-AzVirtualNetwork -ResourceGroupName "ajay-20220410-rg" -Name "Modal"

Add-AzVirtualNetworkSubnetConfig -Name "Cackend" -AddressPrefix "192.168.2.0/24" -VirtualNetwork $vnet1

Set-AzVirtualNetwork -VirtualNetwork $vnet1

#how to create public ip

$publicIP = New-AzPublicIpAddress -Name "ajaykanth12345" -ResourceGroupName "ajay-20220410-rg" -Location "East US" -AllocationMethod "Static" -DomainNameLabel "abcdefajaykanth"

#$publicIP = New-AzPublicIpAddress -Name "ajaykan123454" -ResourceGroupName "ajay-20220410-rg" -Location "East US" -AllocationMethod "Static" -DomainNameLabel "abcdefajayth123"


Set-Item Env:\SuppressAzurePowerShellBreakingChangeWarnings "true"


#how to create nic

$NIC = New-AzNetworkInterface -Name "Mynic" -ResourceGroupName "ajay-20220410-rg" –Location "East US" -SubnetId $vnet1.Subnets[1].Id -PublicIpAddressId $publicIP.Id -PrivateIpAddress "192.168.1.4"






