terraform {
  required_version = ">= 1.5.0"
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">= 6.0"
    }
  }
}

provider "oci" {
  region = var.region
}

resource "oci_core_virtual_network" "main" {
  compartment_id = var.compartment_id
  cidr_block     = "10.40.0.0/16"
  display_name   = "lz-vcn"
  dns_label      = "lzvcn"
}

resource "oci_core_subnet" "shared" {
  compartment_id      = var.compartment_id
  vcn_id              = oci_core_virtual_network.main.id
  cidr_block          = "10.40.10.0/24"
  display_name        = "shared-subnet"
  dns_label           = "shared"
  prohibit_public_ip_on_vnic = true
}
