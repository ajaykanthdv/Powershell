#Login-AzAccount
#Get-AzSubscription

#Set-AzContext -Subscription "DSS Training7"

#Get-AzContext

New-AzResourceGroupDeployment -Name "nadeployment" -ResourceGroupName "ajay-20220410-rg" -TemplateParameterFile "F:\ARM\AddSubnettoExistingVNET.parameters.json" -TemplateFile "F:\ARM\AddSubnettoExistingVNET.Json"  -Force