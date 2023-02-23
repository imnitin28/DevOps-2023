variable "project" {
  default = "d-astronaut-draft"
}
variable "region" {
  default = "us-central1"
}
variable "zone" {
  default = "us-central1-a"
}
variable "instance_name" {
  default = "nitsquare"
}
 variable "machine_type" {
    default = "n1-standard-1"
}
variable "image" {
    default = "debian-cloud/debian-9"
}
variable "GOOGLE_APPLICATION_CREDENTIALS" {
    default = "d-astronaut-draft-bac3f050f907.json"
}