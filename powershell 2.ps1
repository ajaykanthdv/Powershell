Login-AzAccount
Get-AzSubscription

Set-AzContext -Subscription "DSS Training7"

Get-AzContext

New-AzResourceGroupDeployment -Name "demodeployment" -ResourceGroupName "ajay-20220410-rg" -TemplateParameterFile "F:\ARM\WinVM.parameters.json" -TemplateFile "F:\ARM\MultipleWinVM.Json"  -Debug