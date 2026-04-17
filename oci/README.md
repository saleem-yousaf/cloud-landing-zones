# OCI Landing Zone

## Design summary
Oracle Cloud Infrastructure can also benefit from a repeatable landing zone approach, especially in enterprise environments running Oracle workloads. A common model separates tenancy governance, compartments, networking, logging, key management, and workload compartments.

## Recommended design elements
- Compartment hierarchy by platform and workload
- Central VCN strategy with segmentation
- Cloud Guard and Logging enabled centrally
- Vault for secrets and keys
- Tight IAM policies and break-glass controls

## What this starter IaC demonstrates
- Simple VCN and subnet baseline
- Security list example
- Placeholder structure that readers can extend for tenancy guardrails
