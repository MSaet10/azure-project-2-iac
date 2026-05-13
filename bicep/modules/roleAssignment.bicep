targetScope = 'resourceGroup'

@description('Object ID of the user, group, or service principal')
param principalId string

@allowed([
  'User'
  'Group'
  'ServicePrincipal'
  'ForeignGroup'
  'Device'
])
@description('Type of principal being assigned the role')
param principalType string

@description('Role definition ID (GUID only) for the built-in role')
param roleDefinitionGuid string

@description('Optional description for the role assignment')
param assignmentDescription string = 'RBAC assignment deployed with Bicep'

resource roleAssignment 'Microsoft.Authorization/roleAssignments@2022-04-01' = {
  name: guid(resourceGroup().id, principalId, roleDefinitionGuid)
  properties: {
    roleDefinitionId: subscriptionResourceId('Microsoft.Authorization/roleDefinitions', roleDefinitionGuid)
    principalId: principalId
    principalType: principalType
    description: assignmentDescription
  }
}

output roleAssignmentName string = roleAssignment.name