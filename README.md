# Sample Azure Templates
Create resource group:
```
New-AzResourceGroup -Name azgrarg -Location eastus
```

Validate template:
```
Test-AzResourceGroupDeployment -ResourceGroupName azgrarg -TemplateFile ./ubuntu-vm.json -TemplateParameterFile ./ubuntu-vm-parameters.json
```

Deploy template (*Note: run `Test-AzResourceGroupDeployment` with the same parameters to validate the template without deploying):
```
New-AzResourceGroupDeployment -ResourceGroupName azgrarg -TemplateFile ./ubuntu-vm.json -TemplateParameterFile ./ubuntu-vm-parameters.json
```

Remove resource group and resources:
```
Remove-AzResourceGroup -Name azgrarg
```