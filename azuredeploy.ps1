$rgname = "tf-AzureLab-tfState-RG"
$location = "eastus"
New-AzResourceGroup -Name $rgname -Location $location

$templateFile="azuredeploy.json"
$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="addstorage-"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -ResourceGroupName $rgname `
  -TemplateFile $templateFile