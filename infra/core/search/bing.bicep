metadata description = 'Creates an Azure BING Search instance.'
param name string
param location string = 'global'
param sku string
param tagValues object = {}

resource name_resource 'Microsoft.Bing/accounts@2020-06-10' = {
  name: name
  location: location
  tags: (contains(tagValues, 'Microsoft.Bing/accounts') ? tagValues['Microsoft.Bing/accounts'] : json('{}'))
  sku: {
    name: sku
  }
  kind: 'Bing.Search.v7'
}
