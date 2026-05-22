# Azure Infrastructure as Code (IaC) Deployment Project

## Project Overview
This project demonstrates the deployment and management of a cloud infrastructure environment in Microsoft Azure using Infrastructure as Code (IaC) principles. The project focused on automating Azure resource deployment using Bicep and Terraform while implementing networking, compute, monitoring, serverless automation, backup and disaster recovery, validation testing, and GitHub-based documentation workflows.

The environment was designed to simulate a real-world Azure cloud engineering workflow by combining infrastructure automation, operational monitoring, disaster recovery, and deployment validation into a reproducible cloud environment.

The goal of this project was to strengthen cloud engineering and DevOps skills through Infrastructure as Code deployment, Azure automation, monitoring validation, backup testing, and operational troubleshooting.

## Technologies Used
- Microsoft Azure
- Azure CLI
- PowerShell
- Terraform
- Bicep
- Azure Functions
- Azure Monitor
- Log Analytics
- Recovery Services Vault
- GitHub
- Application Insights

## Project Implementation

### Day 1 — Environment Setup
Set up the Azure development environment by validating Azure subscription access, installing Azure CLI and local tooling, organizing the project repository structure, and preparing Infrastructure as Code deployment workflows using Terraform and Bicep.

### Day 2 — Networking Infrastructure
Built the Azure networking foundation by creating virtual networks, subnets, Network Security Groups (NSGs), and inbound security rules for HTTP, HTTPS, and administrative access. Validated subnet and NSG associations within Azure.

### Day 3 — Compute Deployment
Deployed Azure virtual machines using Infrastructure as Code templates, configured networking connectivity, validated VM deployment status, and confirmed successful remote access and web connectivity testing.

### Day 4 — Monitoring & Observability
Configured Azure Monitor, Log Analytics Workspace, monitoring agents, Activity Logs, and diagnostic collection to enable centralized infrastructure monitoring and operational visibility.

### Day 5 — Identity & RBAC
Implemented role-based access control (RBAC) using Microsoft Entra ID by assigning Azure roles, validating access permissions, and configuring secure identity management for Azure resources.

### Day 6 — Serverless & Event-Driven Automation
Deployed Azure Functions using Node.js runtime and Azure CLI ZIP deployment. Configured Azure Function App resources, integrated Storage Accounts and Application Insights, and validated HTTP-triggered serverless execution successfully.

### Day 7 — Backup & Disaster Recovery
Created an Azure Recovery Services Vault, enabled Azure Backup protection for virtual machines, generated recovery points, verified restore functionality, and validated backup protection workflows within Azure.

### Day 8 — Test & Validate
Simulated operational incidents by stopping virtual machines, validated Azure Activity Log monitoring and auditing functionality, verified backup recovery point availability, and successfully validated Infrastructure as Code deployment reproducibility using Bicep deployment validation. 

## Validation & Operational Testing

The Azure Infrastructure as Code environment was tested to validate monitoring, disaster recovery readiness, deployment reproducibility, and operational visibility.

### Validation 1 — Recovery Point Verification
- Verified Recovery Services Vault retained VM recovery points successfully
- Confirmed restore options remained available after backup protection disablement
- Validated disaster recovery readiness

### Validation 2 — VM Incident Simulation
- Simulated a VM outage by stopping/deallocating the virtual machine
- Verified Azure Activity Log captured operational events successfully
- Confirmed monitoring and auditing visibility

### Validation 3 — Infrastructure as Code Deployment Validation
- Validated Bicep deployment using Azure CLI deployment validation
- Resolved required principalId parameter validation issue
- Confirmed Infrastructure as Code reproducibility and deployment consistency

### Validation 4 — Serverless Function Testing
- Verified Azure Function App deployment through HTTP-triggered testing
- Confirmed successful event-driven execution
- Validated Function App integration with Azure services

### Validation 5 — Backup & Restore Validation
- Verified Azure Backup protection status
- Confirmed recovery point creation
- Validated restore workflow visibility within Recovery Services Vault.

## Lessons Learned

This project provided hands-on experience with Infrastructure as Code deployment, Azure automation, monitoring validation, backup and disaster recovery workflows, and operational troubleshooting in Microsoft Azure.

Key lessons learned:

- Infrastructure as Code improves deployment consistency and reproducibility
- Azure Bicep validation helps identify deployment issues before production deployment
- Azure RBAC role assignments require valid Azure Entra principal IDs
- Azure Activity Logs provide important operational auditing and monitoring visibility
- Azure Functions simplify serverless and event-driven automation workflows
- Recovery Services Vault enables centralized backup and disaster recovery management
- Azure Backup recovery points remain available even after backup protection is disabled
- Deployment parameter formatting and validation are critical during automation workflows
- GitHub documentation and architecture diagrams improve project maintainability and portfolio presentation
- Operational testing and incident simulation help validate infrastructure reliability and monitoring readiness

## Conclusion

This project demonstrated the deployment and validation of an enterprise-style Azure Infrastructure as Code environment using Terraform, Bicep, Azure CLI, and PowerShell.

The environment included networking, compute deployment, monitoring and observability, role-based access control, serverless automation, backup and disaster recovery, deployment validation, and GitHub-based documentation workflows.

Infrastructure deployments were validated through operational testing, backup verification, monitoring visibility checks, and Bicep deployment validation to confirm reproducibility and disaster recovery readiness.

