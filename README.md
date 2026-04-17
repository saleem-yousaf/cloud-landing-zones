# Cloud Landing Zone Accelerators

A portfolio-ready collection of secure-by-design landing zone reference implementations for AWS, Azure, and Google Cloud, with architecture diagrams, Infrastructure as Code, and STRIDE mappings aligned to threat hunting and detection engineering.

## What is included
- AWS landing zone design with Terraform starter templates
- Azure landing zone design with Bicep and Terraform starter templates
- GCP landing zone design with Terraform starter templates
- Platform design notes and implementation guidance
- STRIDE mappings tied to likely telemetry and threat hunting use cases
- Reusable diagrams for social content, GitHub readers, and solution discussions

## Why this repository exists
Most cloud programs lose time rebuilding the same foundations: identity, networking, logging, security boundaries, and governance. This repository accelerates the first 20 percent of a cloud platform build by providing opinionated, secure-by-default starting points that teams can adapt instead of rebuilding from scratch.

## Repository structure
- `aws/` - AWS landing zone IaC, notes, and diagrams
- `azure/` - Azure landing zone IaC, notes, and diagrams
- `gcp/` - GCP landing zone IaC, notes, and diagrams
- `docs/` - Cross-cloud guidance, STRIDE mappings, and LinkedIn content
- `shared/` - Security controls and common standards

## Core design principles
1. Separate control plane, logging, security, and workload concerns
2. Default to private connectivity and segmented network design
3. Centralise logs, identity, policy enforcement, and guardrails
4. Build least privilege and preventive governance in from day one
5. Treat detection engineering as part of platform design, not an afterthought

## Suggested next steps for readers
1. Clone the repository and review the relevant provider folder
2. Read the platform notes before deploying the example IaC
3. Tailor CIDR ranges, account or subscription layout, and policy controls
4. Wire the outputs into your own CI/CD process and secrets handling
5. Extend the baseline with workload-specific controls, threat models, and tests
