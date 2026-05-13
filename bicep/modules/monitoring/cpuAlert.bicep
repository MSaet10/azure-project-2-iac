targetScope = 'resourceGroup'

@description('Name of the existing VM to monitor')
param vmName string

@description('Azure region')
param location string = resourceGroup().location

@description('CPU threshold percentage')
param cpuThreshold int = 80

resource existingVm 'Microsoft.Compute/virtualMachines@2023-09-01' existing = {
  name: vmName
}

resource cpuAlert 'Microsoft.Insights/metricAlerts@2018-03-01' = {
  name: '${vmName}-cpu-alert'
  location: 'global'
  properties: {
    description: 'Alert when VM CPU usage is greater than threshold'
    severity: 3
    enabled: true
    scopes: [
      existingVm.id
    ]
    evaluationFrequency: 'PT5M'
    windowSize: 'PT5M'
    criteria: {
      'odata.type': 'Microsoft.Azure.Monitor.SingleResourceMultipleMetricCriteria'
      allOf: [
        {
          name: 'HighCPU'
          metricName: 'Percentage CPU'
          metricNamespace: 'Microsoft.Compute/virtualMachines'
          operator: 'GreaterThan'
          threshold: cpuThreshold
          timeAggregation: 'Average'
          criterionType: 'StaticThresholdCriterion'
        }
      ]
    }
  }
}

output cpuAlertName string = cpuAlert.name

