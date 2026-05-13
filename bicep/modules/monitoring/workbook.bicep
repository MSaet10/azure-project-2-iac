targetScope = 'resourceGroup'

@description('Workbook display name')
param workbookDisplayName string = 'Day 5 VM Monitoring Workbook'

@description('Azure region')
param location string = resourceGroup().location

resource workbook 'Microsoft.Insights/workbooks@2023-06-01' = {
  name: guid(resourceGroup().id, workbookDisplayName)
  location: location
  kind: 'shared'
  properties: {
    displayName: workbookDisplayName
    serializedData: '{"version":"Notebook/1.0","items":[{"type":1,"content":{"json":"# Day 5 VM Monitoring Workbook\\nThis workbook documents VM monitoring, diagnostic settings, CPU alerting, and availability alerting deployed with Bicep."}}],"isLocked":false}'
    category: 'workbook'
  }
}

output workbookName string = workbook.name

