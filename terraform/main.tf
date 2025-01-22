terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = "us-central1" # Change this to your preferred region
}

variable "project_id" {
  description = "The ID of the GCP project to use."
  type        = string
  default     = "vijayendar-gururaja"
}

data "google_client_config" "current" {}

output "project_number" {
  value = data.google_client_config.current.project
}