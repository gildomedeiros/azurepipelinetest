
targetScope='subscription'

@description('Azure resource deployment location.')
param resourceGroupLocation string
param resourceGroupName string

resource newRG 'Microsoft.Resources/resourceGroups@2024-03-01' = {
  name: resourceGroupName
  location: resourceGroupLocation
}


output helloWorld string = '${hello} ${yourName}'

