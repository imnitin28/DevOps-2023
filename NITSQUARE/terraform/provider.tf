terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.53.1"
    }
  }
}

provider "google" {
  # Configuration options
  credentials = var.GOOGLE_APPLICATION_CREDENTIALS
  project     = var.GCP_PROJECT
  region      = var.GCP_REGION
}