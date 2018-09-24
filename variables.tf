variable "project_id" {
  description = "Define project name"
  default     = "jenkins-project-210109"
}
variable "project_name" {
  description = "Define project name"
  default     = "Jenkins Project"
}
variable "project_region" {
  description = "Service project region to deploy resources to"
  default     = "europe-west1"
}

variable "machine_type" {
  description = "Instance machine type"
  default     = "n1-standard-1"
}

variable "instance_image" {
  description = "Instance base image"
  default     = "centos-7"
}

variable "instance_name" {
  description = "instance name"
  default     = "datadog"
}

variable "instance_zone" {
  description = "Define zone for PowerDNS master instance"
  default     = "europe-west1-b"
}