provider "google" {
     project     = var.project
     region      = var.region
     zone        = var.zone
     credentials = var.GOOGLE_APPLICATION_CREDENTIALS // export GOOGLE_APPLICATION_CREDENTIALS="/~/path/to/gcp-sa.json"
}