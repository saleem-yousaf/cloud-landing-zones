terraform {
  required_version = ">= 1.5.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 5.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_compute_network" "main" {
  name                    = "lz-shared-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "shared" {
  name          = "shared-services-subnet"
  ip_cidr_range = "10.30.10.0/24"
  region        = var.region
  network       = google_compute_network.main.id
}

resource "google_compute_firewall" "internal_allow" {
  name    = "allow-internal"
  network = google_compute_network.main.name

  allow {
    protocol = "tcp"
  }

  source_ranges = ["10.30.0.0/16"]
}
