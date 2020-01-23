Connect-AzAccount
$webappname = Read-Host -Prompt 'Geef aangemaakte web app naam in'
$resourcegroup = Read-Host -Prompt 'Geef aangemaakt Resource Groep naam in.'
$id = (Get-AzADServicePrincipal -DisplayName "$webappname").id
New-AzRoleAssignment -ObjectId "$id" -RoleDefinitionName contributor -ResourceGroupName "$resourcegroup"