# 🌍 Cloud Landing Zone Accelerators (AWS | Azure | GCP | OCI)

Secure, production-ready cloud foundations with Infrastructure as Code and built-in threat detection.



## 🚀 The problem

Most cloud projects waste weeks rebuilding the same foundations:

* Networking
* Identity
* Logging
* Security controls

Before delivering any real value.

---


## 💡 The solution



This repository provides ready-to-deploy landing zone accelerators that are:

* 🔐 Secure by design
* ⚙️ Built with Infrastructure as Code
* 📊 Observable and threat-aware
* ☁️ Multi-cloud (AWS, Azure, GCP, OCI)

👉 Deploy a secure cloud foundation in minutes, not weeks.

---



## 📊 Architecture Overview

### AWS

[AWS](aws/diagrams/aws-landing-zone.png)

### Azure

[Azure](azure/diagrams/azure-landing-zone.png)

### GCP

[GCP](gcp/diagrams/gcp-landing-zone.png)

---



## 🧱 What’s included

### ☁️ AWS



* Multi-account architecture (Organization-based)
* VPC segmentation (public / private / isolated)
* GuardDuty, CloudTrail, logging baseline
* Terraform starter

### ☁️ Azure

* Management groups + subscription model
* Hub-spoke networking
* Defender + Log Analytics baseline
* Bicep + Terraform

### ☁️ GCP

* Org → Folder → Project model
* Shared VPC design
* IAM + logging baseline
* Terraform starter

### ☁️ OCI (Optional)

* Compartment-based landing zone
* VCN + IAM + Cloud Guard concepts

---

## 🔐 Security-first design

All landing zones include:

* Least privilege access models
* Centralised logging
* Network segmentation
* Policy enforcement
* Secure defaults (no public exposure by default)

---



## 🎯 STRIDE → Threat Hunting (What makes this different)



Most landing zone designs stop at architecture.

This one goes further — linking threat modelling → detection engineering.



| STRIDE                 | Detection Focus                      |

| ---------------------- | ------------------------------------ |

| Spoofing               | Suspicious logins / role assumptions |

| Tampering              | Policy and configuration drift       |

| Repudiation            | Unattributed privileged actions      |

| Information Disclosure | Data exfiltration patterns           |

| Denial of Service      | Traffic spikes / abuse               |

| Privilege Escalation   | Role changes + sensitive API calls   |



👉 See full mappings: `/docs/stride-threat-hunting-mappings.md`



---

## ⚙️ Quick Start

```bash

# Example (AWS Terraform)

cd aws/terraform

terraform init

terraform apply

```

---


## 🧠 Why this matters

A landing zone is not just infrastructure.


It is:

* Your security boundary
* Your audit evidence source
* Your incident investigation foundation

If it’s built wrong, everything on top of it is at risk.

---

## 🧠 Who this is for

* Security architects
* Cloud engineers
* Platform teams
* Organisations building secure cloud environments

---

## 👤 Author

Saleem Yousaf
Cybersecurity Architect | Cloud Security | Zero Trust

---

## ⭐ If useful

If this repository helped you:
* Star ⭐ the repo
* Share it
* Suggest improvements



