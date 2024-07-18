
targetScope='subscription'

@description('Azure resource deployment location.')
param location string = resourceGroup().location
param resourceGroupName string

resource newRG 'Microsoft.Resources/resourceGroups@2024-03-01' = {
  name: resourceGroupName
  location: location
}


