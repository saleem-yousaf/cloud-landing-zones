# AWS Landing Zone

## Design summary
This reference design uses AWS Organizations to separate management, security, logging, and workload accounts. It assumes centralised CloudTrail, GuardDuty, Security Hub, Config, and a shared networking baseline with segmented VPCs.

## Recommended account model
- Management account
- Security account
- Log archive account
- Shared services account
- Workload accounts for dev, test, and production

## Core design elements
- AWS Organizations and SCP guardrails
- IAM Identity Center for workforce access
- Central logging and security aggregation
- Segmented VPC design with public, private, and isolated tiers
- Private connectivity and central egress where possible

## What this starter IaC demonstrates
- Baseline VPC segmentation
- Logging bucket with versioning and encryption
- GuardDuty detector enablement
- CloudTrail baseline

## Helpful additions for readers
- Integrate Control Tower or custom organisation automation
- Extend with AWS Config rules and Security Hub standards
- Add Route 53 Resolver logging, VPC Flow Logs, and S3 data event logging
