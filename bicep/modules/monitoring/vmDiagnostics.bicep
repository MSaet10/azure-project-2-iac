targetScope = 'resourceGroup'

@description('Name of the existing virtual machine to monitor')
param vmName string

@description('Resource ID of the Log Analytics Workspace')
param workspaceId string

resource existingVm 'Microsoft.Compute/virtualMachines@2023-09-01' existing = {
  name: vmName
}

resource vmDiagnosticSettings 'Microsoft.Insights/diagnosticSettings@2021-05-01-preview' = {
  name: 'vm-to-log-analytics'
  scope: existingVm
  properties: {
    workspaceId: workspaceId
    metrics: [
      {
        category: 'AllMetrics'
        enabled: true
      }
    ]
  }
}

output vmDiagnosticSettingName string = vmDiagnosticSettings.name


