# Azure Landing Zone

## Design summary
This reference design uses management groups, separate subscriptions, and a hub-and-spoke pattern to centralise connectivity, policy, identity dependencies, and security monitoring while keeping workloads isolated.

## Recommended subscription model
- Identity
- Management
- Connectivity
- Shared services
- Workload subscriptions for dev, test, and production

## Core design elements
- Management group hierarchy with policy inheritance
- Hub-and-spoke virtual networking
- Azure Firewall, Bastion, and private connectivity
- Log Analytics and Defender for Cloud
- RBAC and PIM for privileged administration

## What this starter IaC demonstrates
- Baseline virtual network and subnet structure
- Log Analytics workspace
- Network security group creation
- Simple Terraform and Bicep starting points
