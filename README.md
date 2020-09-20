# Sample Azure Templates
Create resource group:
```
New-AzResourceGroup -Name azgrarg
```

Deploy template:
```
New-AzResourceGroupDeployment -ResourceGroupName azgrarg -TemplateFile ./template.json -TemplateParameterFile ./parameters.json
```

Remove resource group and resources:
```
Remove-AzResourceGroup -Name azgrarg
```