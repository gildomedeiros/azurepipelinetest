var yourName ='bla'
var hello = 'Hello World! - Hi'

@description('Azure resource deployment location.')
param location string = resourceGroup().location

resource appServicePlan 'Microsoft.Web/serverfarms@2020-12-01' = {
  name: 'myAppServicePlan'
  location: location
  sku: {
    name: 'F1'
  }
  kind: 'app'
  properties: {
    reserved: false
  }
}

output helloWorld string = '${hello} ${yourName}'

