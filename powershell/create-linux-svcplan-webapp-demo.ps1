<# 

Demo: Powershell to create webapp with docker image

Add-AzureRmAccount

#>

# User Parameters
$webAppName = '<APP-NAME>'
$appServicePlan =  '<SERVICE-PLAN-NAME>'
$resourceGroupName = '<RESOURCE-GROUP-NAME>'
$location = 'Southeast Asia' # 'West Europe' , 'West US'

# Sample dockerhub image
$dockerImage = "iljoong/tomcatsample"

Write-Output  ">>>1.CREATE WEB APP: $webAppName"
	

$parameters = @{"siteName"=$WebAppName; "appServicePlanName" = $appServicePlan; "dockerImage" = $dockerImage; "location" = $location }

New-AzureRmResourceGroup -Name $resourceGroupName -Location $location
New-AzureRmResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile "dockerjavawebapp.json"  -TemplateParameterObject $parameters -Verbose

<#

# Run browser
start "Http://$webAppName.azurewebsites.net"

#>

<#

# Remove resource group
Remove-AzureRmResourceGroup -Name $resourceGroupName -Force -Verbose

#>