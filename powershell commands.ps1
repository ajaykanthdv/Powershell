Login-AzAccount

Get-AzContext

Get-AzSubscription

Set-AzContext -Subscription "DSS Training7"

New0-AzResourceGroupDeployment 

Get-AzResourceGroup

New-AzResourceGroupDeployment -Name "demodeployment" -ResourceGroupName "ajay-20220410-rg" -TemplateFile "F:\ARM\new.Json" -Debug

Get-AzResourceGroup -InformationVariable -Name

#how to list 

Get-AzResource -ResourceGroupName "ajay-20220410-rg"

Get-AzResource -ResourceType "Microsoft.Storage/storageAccounts" -ResourceGroupName "ajay-20220410-rg"


Remove-AzResource -ResourceType "Microsoft.Storage/storageAccounts" -ResourceName "*.*" -ResourceGroupName "ajay-20220410-rg"

Remove-AzResourceGroupDeployment -Name "demodeployment" -ResourceGroupName "ajay-20220410-rg"

Get-AzResource -ResourceType "Microsoft.Storage/storageAccounts" | Remove-AzResource -force

Get-AzResourceProvider -ListAvailable

#run as adiminstrator

start-process PowershellIse -Verb runas

#run script

#go to powershell script folder .\selectpowershellfile and hit enter

Remove-AzVM -Force ajay-20220410-rg -Name "*.*"

Get-AzResource | Remove-AzResource

Get-AZResource | Remove-AzVM -Force

#Executionpolicy

Get-ExecutionPolicy -List

Get-ExecutionPolicy -Scope LocalMachine

Set-Executionpolicy -Executionpolicy RemoteSigned -Scope LocalMachine


#policies for execution are
#Allsigned - need sign from publisher
#RemoteSigned - local scripts don't need digital signatures but downloaded from internet need
#Restricted - allow individual commands but not scripts, only for windows clients
#UnRestricted - can do anything
#Undefined - no defined any policy
#Bypass - nothing is stopped and no alerts will be there








#exit