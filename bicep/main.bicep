targetScope = 'resourceGroup'

@description('Object ID of the target principal')
param principalId string

@description('Type of principal: User, Group, or ServicePrincipal')
param principalType string = 'User'

@description('Built-in role definition GUID')
param roleDefinitionGuid string

@description('Log Analytics Workspace name')
param logAnalyticsWorkspaceName string = 'law-cloud-iac'

@description('Name of the existing VM to monitor')
param vmName string = 'vm-cloud-iac'

module builtInRoleAssignment './modules/roleAssignment.bicep' = {
  name: 'builtInRoleAssignmentDeploy'
  params: {
    principalId: principalId
    principalType: principalType
    roleDefinitionGuid: roleDefinitionGuid
    assignmentDescription: 'Built-in RBAC role assignment for Day 4 lab'
  }
}

module logAnalytics './modules/monitoring/logAnalytics.bicep' = {
  name: 'logAnalyticsDeploy'
  params: {
    workspaceName: logAnalyticsWorkspaceName
  }
}

module vmDiagnostics './modules/monitoring/vmDiagnostics.bicep' = {
  name: 'vmDiagnosticsDeploy'
  params: {
    vmName: vmName
    workspaceId: logAnalytics.outputs.workspaceId
  }
}

module cpuAlert './modules/monitoring/cpuAlert.bicep' = {
  name: 'cpuAlertDeploy'
  params: {
    vmName: vmName
    cpuThreshold: 80
  }
}
module vmAvailabilityAlert './modules/monitoring/vmAvailabilityAlert.bicep' = {
  name: 'vmAvailabilityAlertDeploy'
  params: {
    vmName: vmName
  }
}
module workbook './modules/monitoring/workbook.bicep' = {
  name: 'workbookDeploy'
  params: {
    workbookDisplayName: 'Day 5 VM Monitoring Workbook'
  }
}

output roleAssignmentName string = builtInRoleAssignment.outputs.roleAssignmentName
output logAnalyticsWorkspaceId string = logAnalytics.outputs.workspaceId
output vmDiagnosticSettingName string = vmDiagnostics.outputs.vmDiagnosticSettingName
output cpuAlertName string = cpuAlert.outputs.cpuAlertName
output availabilityAlertName string = vmAvailabilityAlert.outputs.availabilityAlertName
output workbookName string = workbook.outputs.workbookName

