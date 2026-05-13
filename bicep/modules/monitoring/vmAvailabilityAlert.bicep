targetScope = 'resourceGroup'

@description('Name of the existing VM to monitor')
param vmName string

resource existingVm 'Microsoft.Compute/virtualMachines@2023-09-01' existing = {
  name: vmName
}

resource availabilityAlert 'Microsoft.Insights/metricAlerts@2018-03-01' = {
  name: '${vmName}-availability-alert'
  location: 'global'
  properties: {
    description: 'Alert when VM availability drops below threshold'
    severity: 2
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
          name: 'VmUnavailable'
          metricName: 'VmAvailabilityMetric'
          metricNamespace: 'Microsoft.Compute/virtualMachines'
          operator: 'LessThan'
          threshold: 1
          timeAggregation: 'Average'
          criterionType: 'StaticThresholdCriterion'
        }
      ]
    }
  }
}

output availabilityAlertName string = availabilityAlert.name

