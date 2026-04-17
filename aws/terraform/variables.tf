variable "region" {
  type    = string
  default = "eu-west-2"
}

variable "log_bucket_name" {
  type    = string
  default = "replace-me-landing-zone-log-bucket"
}

variable "vpc_cidr" {
  type    = string
  default = "10.10.0.0/16"
}

variable "public_subnet_a" {
  type    = string
  default = "10.10.1.0/24"
}

variable "private_subnet_a" {
  type    = string
  default = "10.10.11.0/24"
}
