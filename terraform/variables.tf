variable "region" {
  type        = string
  description = "AWS Region of choice for deployments."
  default     = "eu-west-1"
}

variable "project" {
  type        = string
  description = "Name of the project/service"
}