variable "region" {
  type        = string
  description = "AWS Region of choice for deployments."
  default     = "eu-west-1"
}

variable "project" {
  type        = string
  description = "Name of the project/service"
}

# Python Example
variable "func1_prefix" {
  type = string
}

variable "func1_runtime" {
  type = string
}

variable "func1_handler" {
  type = string
}

variable "func1_path" {
  type = string
}

# Node Example
variable "func2_prefix" {
  type = string
}

variable "func2_runtime" {
  type = string
}

variable "func2_handler" {
  type = string
}

variable "func2_path" {
  type = string
}