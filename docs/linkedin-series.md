# LinkedIn Content Series

## Post 1: Why landing zones still matter
Cloud transformation stalls when teams keep rebuilding identity, networking, logging, and governance from scratch. I have been pulling together reusable landing zone accelerators for AWS, Azure, and GCP that are designed to be secure by default and useful from day one. The aim is simple: spend less time rebuilding the foundation and more time delivering workloads safely.

## Post 2: AWS focus
A good AWS landing zone is more than a VPC template. It should separate management, logging, security, and workload accounts; centralise CloudTrail and GuardDuty; enforce guardrails with SCPs; and make it easier to investigate suspicious activity across accounts. I have added starter Terraform and a simple reference diagram to show the model.

## Post 3: Azure focus
Azure landing zones work best when governance and connectivity are treated as platform capabilities, not afterthoughts. Management groups, policy, Defender, hub-and-spoke networking, private endpoints, and central log collection all need to be part of the foundation. I have included starter Bicep and Terraform examples to help accelerate that.

## Post 4: GCP focus
GCP benefits from a clear organisation and folder structure, project separation, Shared VPC, central logging, and strong IAM discipline. The landing zone baseline becomes even stronger when you design with service perimeters and telemetry in mind so threat hunting is easier later.

## Post 5: Threat hunting angle
Threat modelling is only useful if it changes what you build and what you monitor. I mapped STRIDE categories against landing zone design choices and hunt ideas so teams can connect architecture decisions to the telemetry they need for investigations.
