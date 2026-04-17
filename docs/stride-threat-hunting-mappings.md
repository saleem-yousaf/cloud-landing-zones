# STRIDE Mappings for Threat Hunting in Cloud Landing Zones

This document maps STRIDE categories to likely cloud attack paths, preventive controls, telemetry sources, and hunting ideas. The goal is to help readers connect threat modelling to practical detection engineering.

## How to use this document
Use STRIDE during design reviews, then carry the outputs into logging requirements, detections, hunt hypotheses, purple team exercises, and incident playbooks.

## AWS

### Spoofing
- Risk examples: compromised IAM users, federated access abuse, token theft, role assumption from unusual principals
- Preventive controls: IAM Identity Center, MFA, conditional access, short-lived credentials, access analyser, least privilege
- Telemetry: CloudTrail, IAM Access Analyzer findings, GuardDuty, VPC Flow Logs, IdP logs
- Hunting ideas:
  - Identify successful console or API access from new geographies or impossible travel patterns
  - Hunt for unusual `AssumeRole` chains, especially into security, logging, or shared services accounts
  - Review access-key use after long inactivity or outside expected automation windows

### Tampering
- Risk examples: security group changes, route table manipulation, bucket policy weakening, KMS key misuse, log trail changes
- Preventive controls: SCPs, Config rules, change control, immutable logging, versioning, infrastructure pipelines
- Telemetry: CloudTrail, AWS Config, CloudWatch Events, S3 data events
- Hunting ideas:
  - Hunt for policy changes followed by data access or exfiltration patterns
  - Review disabled or modified CloudTrail, Config, GuardDuty, Security Hub, or logging sinks
  - Detect drift between IaC state and deployed control plane configuration

### Repudiation
- Risk examples: insufficient attribution for admin changes, deletion of audit records, shared accounts
- Preventive controls: SSO, session tagging, central logging, immutable retention, workload identity standards
- Telemetry: CloudTrail, S3 object access logs, organisation trails
- Hunting ideas:
  - Hunt for activities performed without expected session tags, ticket references, or pipeline identities
  - Review attempts to reduce audit coverage, retention, or encryption on central logs

### Information Disclosure
- Risk examples: public buckets, cross-account overexposure, snapshot sharing, secrets leakage, permissive KMS grants
- Preventive controls: Block Public Access, Macie, Secrets Manager, private endpoints, data classification, KMS governance
- Telemetry: Macie findings, CloudTrail data events, S3 server access logs, VPC Flow Logs, Route 53 Resolver logs
- Hunting ideas:
  - Hunt for bulk reads from sensitive stores or unusual download spikes
  - Identify new public exposure on storage, load balancers, or API endpoints
  - Review snapshot, AMI, and key-sharing activity across accounts

### Denial of Service
- Risk examples: resource exhaustion, autoscaling abuse, public endpoint floods, quota exhaustion
- Preventive controls: AWS Shield, WAF, quotas, rate limits, resilient architecture
- Telemetry: CloudWatch metrics, WAF logs, Shield events, application telemetry
- Hunting ideas:
  - Hunt for sudden surges in rejected requests, failed auth attempts, or API throttling
  - Correlate internet-facing load increases with control plane changes or bot signatures

### Elevation of Privilege
- Risk examples: policy escalation, role chaining, privilege expansion through service-linked roles, Lambda or EC2 metadata abuse
- Preventive controls: least privilege, permission boundaries, SCPs, IMDSv2, separation of duties
- Telemetry: CloudTrail, GuardDuty, IAM Access Analyzer, EDR or CW agent data where available
- Hunting ideas:
  - Hunt for creation or attachment of high-risk policies followed by sensitive API calls
  - Review privilege escalation sequences such as role creation, pass-role abuse, or trust-policy relaxation

## Azure

### Spoofing
- Risk examples: Entra ID credential theft, managed identity abuse, service principal misuse
- Preventive controls: Conditional Access, MFA, PIM, workload identity governance, passwordless auth
- Telemetry: Entra sign-in logs, audit logs, Azure Activity Log, Defender for Cloud
- Hunting ideas:
  - Hunt for successful sign-ins from risky locations or unfamiliar device patterns
  - Review service principal and managed identity use outside expected resource scopes

### Tampering
- Risk examples: NSG rule changes, Key Vault policy changes, Azure Policy exemptions, diagnostic setting removal
- Preventive controls: Azure Policy, resource locks, change governance, immutable retention where applicable
- Telemetry: Azure Activity Log, Azure Resource Graph, Defender, Key Vault logs
- Hunting ideas:
  - Hunt for policy exemptions followed by risky deployments
  - Review log sink changes, disabled Defender plans, or downgraded diagnostics

### Repudiation
- Risk examples: weak admin attribution, manual changes outside pipelines, missing break-glass governance
- Preventive controls: PIM, named admin accounts, logging, approval workflows, pipeline identity
- Telemetry: Entra audit logs, Azure Activity Log, Log Analytics
- Hunting ideas:
  - Hunt for privileged actions taken outside PIM windows or outside approved automation accounts

### Information Disclosure
- Risk examples: public blobs, permissive SAS tokens, secret exposure in App Service settings, over-shared snapshots
- Preventive controls: Private Endpoints, Defender for Storage, Key Vault, data classification, Azure Policy
- Telemetry: Storage logs, Key Vault logs, Defender alerts, Activity Log
- Hunting ideas:
  - Hunt for unusual SAS creation, secret reads, or data access spikes from non-standard IP ranges

### Denial of Service
- Risk examples: exposed applications, DDoS against public IPs, control plane quota exhaustion
- Preventive controls: DDoS Network Protection, WAF, autoscale governance, rate limiting
- Telemetry: Azure Monitor metrics, WAF logs, DDoS telemetry, app telemetry
- Hunting ideas:
  - Hunt for request flood patterns, elevated 429 or 5xx rates, and correlated bot-like traffic

### Elevation of Privilege
- Risk examples: role assignment abuse, PIM misuse, custom role misconfiguration, managed identity overprivilege
- Preventive controls: least privilege RBAC, PIM approval, management group policy, separation of duties
- Telemetry: Entra audit logs, Activity Log, Defender recommendations
- Hunting ideas:
  - Hunt for new owner or user access administrator assignments followed by sensitive resource changes

## GCP

### Spoofing
- Risk examples: stolen service account keys, federated identity misuse, token impersonation
- Preventive controls: workload identity federation, short-lived credentials, MFA, org policy restrictions
- Telemetry: Cloud Audit Logs, IAM logs, Security Command Center
- Hunting ideas:
  - Hunt for service account use from unexpected projects, regions, or user agents

### Tampering
- Risk examples: firewall rule weakening, logging sink modification, org policy rollback, KMS changes
- Preventive controls: org policies, CI/CD controls, central logging projects, least privilege
- Telemetry: Cloud Audit Logs, SCC findings, firewall logs
- Hunting ideas:
  - Hunt for changes to organisation policies, log sinks, or service perimeters before suspicious data access

### Repudiation
- Risk examples: shared identities, inadequate audit retention, manual changes without tags or tickets
- Preventive controls: workforce identity, central logging, naming and tagging standards
- Telemetry: Cloud Audit Logs, asset inventory
- Hunting ideas:
  - Hunt for actions from generic identities or principals that do not match deployment pipelines

### Information Disclosure
- Risk examples: exposed Cloud Storage buckets, permissive IAM bindings, snapshot sharing, BigQuery overexposure
- Preventive controls: VPC Service Controls, DLP, CMEK, org policy, private service access
- Telemetry: Cloud Storage access logs, BigQuery audit logs, SCC findings
- Hunting ideas:
  - Hunt for bulk exports, anonymous exposure, or unusual access to datasets and storage objects

### Denial of Service
- Risk examples: load balancer abuse, API quota exhaustion, compute or serverless cost spikes
- Preventive controls: Cloud Armor, quotas, autoscaling controls, resilient service design
- Telemetry: Cloud Monitoring, Cloud Armor logs, billing anomalies
- Hunting ideas:
  - Hunt for abnormal ingress surges, quota failures, or spend anomalies tied to internet-facing services

### Elevation of Privilege
- Risk examples: privileged IAM binding creation, service account impersonation, inherited project access abuse
- Preventive controls: least privilege, org policies, deny policies, service account hygiene
- Telemetry: Cloud Audit Logs, SCC findings, IAM policy changes
- Hunting ideas:
  - Hunt for high-risk bindings added shortly before access to sensitive projects or data stores
