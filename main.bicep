param resourceGroupName string
param resourceGroupLocation string

@description('desccription test')
resource newRG 'Microsoft.Resources/resourceGroups@2024-03-01' = {
  name: resourceGroupName
  location: resourceGroupLocation
}
