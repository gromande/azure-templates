# Sample Azure Templates
Create resource group:
```
New-AzResourceGroup -Name azgrarg -Location eastus
```

Validate template:
```
Test-AzResourceGroupDeployment -ResourceGroupName azgrarg -TemplateFile ./ubuntu-vm.json -TemplateParameterFile ./ubuntu-vm-parameters.json
```

Deploy template:
```
New-AzResourceGroupDeployment -ResourceGroupName azgrarg -TemplateUri https://raw.githubusercontent.com/gromande/azure-templates/master/ubuntu-vm.json -TemplateParameterFile ./ubuntu-vm-parameters.json
```

Remove resource group and resources:
```
Remove-AzResourceGroup -Name azgrarg
```