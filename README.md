# Sample Azure Templates
## PowerShell Commands
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

## Azure CLI Commands
Create resource group:
```
az group create -l eastus -n azgrarg
```

Validate template:
```
az deployment group validate --resource-group azgrarg --template-file ./sql-database.json --parameters administratorLoginPassword='Password123#'
```

Deploy template:
```
az deployment group create --resource-group azgrarg --template-file ./sql-database.json --parameters administratorLoginPassword='Password123#'
```

Remove resource group and resources:
```
az group remove -l eastus -n azgrarg
```

## TO-DOs
* Restrict SQL access to VMs only