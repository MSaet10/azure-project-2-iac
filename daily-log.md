# Daily Log — Azure Infrastructure as Code (IaC) Deployment Project

## Day 1 — Environment Setup

### Tasks Completed
- Validated Azure subscription access
- Installed:
  - Azure CLI
  - Git
  - Visual Studio Code
- Organized Infrastructure as Code project structure
- Prepared Terraform and Bicep deployment workflow directories
- Configured Azure authentication using:
  - `az login`

### Key Accomplishments
- Successfully configured local Azure development environment
- Prepared Infrastructure as Code project structure
- Established Azure CLI authentication and deployment readiness

---

## Day 2 — Networking Infrastructure

### Tasks Completed
- Created Azure Virtual Network
- Configured segmented subnets
- Created Network Security Groups (NSGs)
- Added inbound rules for:
  - HTTP
  - HTTPS
  - administrative access
- Associated NSGs with Azure subnets
- Validated subnet and NSG configurations in Azure

### Key Accomplishments
- Successfully built Azure networking foundation
- Implemented subnet segmentation and network security controls
- Validated Azure networking connectivity and NSG associations

---

## Day 3 — Compute Deployment

### Tasks Completed
- Deployed Azure Virtual Machines using Infrastructure as Code templates
- Configured networking connectivity for virtual machines
- Validated VM deployment status
- Tested successful remote access connectivity
- Verified web connectivity and VM availability

### Key Accomplishments
- Successfully deployed Azure compute infrastructure
- Validated Infrastructure as Code VM deployment workflows
- Confirmed VM networking and connectivity functionality

---

## Day 4 — Monitoring & Observability

### Tasks Completed
- Configured Azure Monitor
- Created Log Analytics Workspace
- Configured monitoring agents
- Enabled Azure Activity Logs
- Configured diagnostic data collection
- Validated centralized monitoring visibility

### Key Accomplishments
- Successfully implemented Azure monitoring and observability
- Centralized infrastructure monitoring and diagnostics
- Validated Azure monitoring data collection functionality

---

## Day 5 — Identity & RBAC

### Tasks Completed
- Implemented Microsoft Entra ID role assignments
- Configured Azure RBAC permissions
- Validated Azure access permissions
- Configured secure identity management controls
- Tested RBAC permission functionality

### Key Accomplishments
- Successfully implemented Azure identity and access management
- Applied secure RBAC permission controls
- Validated Azure access restriction behavior

---

## Day 6 — Serverless & Event-Driven Automation

### Tasks Completed
- Deployed Azure Functions using Node.js runtime
- Configured Azure Function App resources
- Integrated Azure Storage Accounts
- Integrated Application Insights
- Configured Azure CLI ZIP deployment
- Validated HTTP-triggered Azure Function execution

### Key Accomplishments
- Successfully implemented serverless automation workflows
- Validated Azure Function App deployment and execution
- Integrated Azure monitoring with serverless resources

---

## Day 7 — Backup & Disaster Recovery

### Tasks Completed
- Created Azure Recovery Services Vault
- Enabled Azure Backup protection for virtual machines
- Generated VM recovery points
- Verified Azure restore functionality
- Validated backup protection workflows

### Key Accomplishments
- Successfully implemented Azure backup and disaster recovery
- Validated VM recovery point generation
- Confirmed restore workflow functionality

---

## Day 8 — Test & Validate

### Tasks Completed
- Simulated virtual machine operational incidents
- Stopped/deallocated Azure virtual machines
- Validated Azure Activity Log monitoring
- Verified Azure monitoring and auditing visibility
- Verified backup recovery point availability
- Validated Bicep deployment reproducibility using:
  - Azure CLI deployment validation
- Resolved required `principalId` validation issue

### Key Accomplishments
- Successfully simulated operational Azure incidents
- Validated monitoring, auditing, and backup readiness
- Confirmed Infrastructure as Code reproducibility and deployment consistency

---

# Validation & Operational Testing

## Validation 1 — Recovery Point Verification

### Tasks Completed
- Verified Recovery Services Vault retained VM recovery points
- Confirmed restore options remained available after backup disablement
- Validated disaster recovery readiness

### Key Accomplishments
- Confirmed Azure Backup recovery point retention functionality
- Validated Recovery Services Vault disaster recovery capabilities

---

## Validation 2 — VM Incident Simulation

### Tasks Completed
- Simulated virtual machine outage
- Stopped/deallocated Azure VM
- Verified Azure Activity Log operational event visibility
- Validated monitoring and auditing functionality

### Key Accomplishments
- Successfully validated Azure monitoring visibility during outages
- Confirmed Azure operational auditing functionality

---

## Validation 3 — Infrastructure as Code Deployment Validation

### Tasks Completed
- Validated Bicep deployment using Azure CLI deployment validation
- Resolved required `principalId` parameter issue
- Verified Infrastructure as Code deployment consistency

### Key Accomplishments
- Successfully validated Infrastructure as Code reproducibility
- Confirmed Azure Bicep deployment validation functionality

---

## Validation 4 — Serverless Function Testing

### Tasks Completed
- Verified Azure Function App deployment
- Tested HTTP-triggered Azure Function execution
- Confirmed successful event-driven automation behavior
- Validated Azure Function integration with Azure services

### Key Accomplishments
- Successfully validated Azure Function App deployment workflows
- Confirmed event-driven automation functionality

---

## Validation 5 — Backup & Restore Validation

### Tasks Completed
- Verified Azure Backup protection status
- Confirmed VM recovery point creation
- Validated restore workflow visibility inside Recovery Services Vault

### Key Accomplishments
- Successfully validated Azure backup and restore workflows
- Confirmed disaster recovery readiness

---

# Overall Project Outcome

Successfully designed, deployed, monitored, validated, and operationally tested an Azure Infrastructure as Code environment using:

- Microsoft Azure
- Terraform
- Bicep
- Azure CLI
- PowerShell
- Azure Monitor
- Azure Functions
- Application Insights
- Recovery Services Vault
- Azure Backup

The project demonstrates practical skills in:

- Cloud Engineering
- Infrastructure as Code
- Azure Administration
- Azure Monitoring & Observability
- Azure Automation
- Backup & Disaster Recovery
- Identity & Access Management
- Operational Troubleshooting
- Infrastructure Validation
- Serverless Automation
