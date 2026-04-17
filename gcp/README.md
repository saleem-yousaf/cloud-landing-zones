# GCP Landing Zone

## Design summary
This reference design uses the GCP organisation hierarchy to separate folders and projects, centralises logging, and encourages Shared VPC and service perimeter thinking early in the design.

## Recommended hierarchy
- Organisation
- Platform folder
- Security folder
- Networking folder
- Application folders and projects

## Core design elements
- Shared VPC for centralised networking
- Project separation by environment and function
- Central logging and monitoring projects
- IAM discipline and service account governance
- Org policies and service perimeter controls

## What this starter IaC demonstrates
- Baseline VPC and subnet
- Firewall example
- Logging-ready project structure assumptions
