# Architecture Principles for Cloud Landing Zones

## Outcomes
The landing zone should reduce delivery friction while increasing governance, observability, and isolation. It is not just a network build. It is the operating model for how cloud resources are provisioned, secured, monitored, and investigated.

## Design goals
- Secure-by-default platform foundations
- Clear administrative boundaries
- Centralised logging and monitoring
- Repeatable provisioning via IaC
- Support for threat detection and incident response
- Separation of environments and duties

## Common control domains
- Identity and access management
- Network segmentation and ingress or egress control
- Logging, monitoring, and alerting
- Policy and configuration governance
- Secrets and key management
- Backup and resilience
- Detection engineering and threat hunting

## Threat-hunting design principle
Threat hunting improves when the platform produces the right telemetry by default. A landing zone should deliberately emit logs from identity providers, control plane actions, network security controls, DNS, workload services, storage access, and endpoint integrations wherever possible.
