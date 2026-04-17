# Cross-Cloud Baseline Controls

## Identity
- Centralised identity provider with strong authentication
- Least privilege access model
- Privileged access workflows and just-in-time elevation
- No shared administrator identities

## Network
- Segmented design with controlled ingress and egress
- Default-private services where possible
- Dedicated management paths for administration
- DNS and egress telemetry enabled

## Logging and Monitoring
- Central log aggregation with defined retention
- Control plane logging enabled by default
- Data access logging for critical stores
- Alerting for security control degradation

## Governance
- Policy guardrails to prevent high-risk deployments
- Tagging and naming standards
- Drift detection against IaC baselines
- Break-glass process with governance

## Secrets and Keys
- Managed secret stores and customer-managed keys where needed
- Rotation and access logging
- No secrets embedded in code or pipeline variables without protection
