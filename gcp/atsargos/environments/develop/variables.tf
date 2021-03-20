variable "project" {
  description = "A name of a GCP project"
  type        = string
}

variable "region" {
  description = "A region used in a compute instance"
  type        = string
  default     = "asia-northeast1"

  validation {
    condition     = contains(["asia-northeast1"], var.region)
    error_message = "The region must be asia-northeast1."
  }
}

variable "zone" {
  description = "A zone used in a compute instance"
  type        = string
  default     = "asia-northeast1-a"

  validation {
    condition     = contains(["asia-northeast1-a", "asia-northeast1-b", "asia-northeast1-c"], var.zone)
    error_message = "The zone must be in asia-northeast1 region."
  }
}

variable "environment" {
  description = "An environment of a service"
  type        = string
  default     = "develop"

  validation {
    condition     = contains(["develop", "staging", "production"], var.environment)
    error_message = "The environment must be develop, staging or production."
  }
}
