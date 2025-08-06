variable "resource_group_name" {
  description = "The name of the Resource Group"
  type        = string
}

variable "resource_group_location" {
  description = "The Azure region for the Resource Group"
  type        = string
}

variable "public_ip_name" {
  description = "The name of the Public IP resource"
  type        = string
}

variable "public_ip_allocation_method" {
  description = "The allocation method for the Public IP (Static or Dynamic)"
  type        = string
}

variable "load_balancer_name" {
  description = "The name of the Load Balancer"
  type        = string
}

variable "frontend_ip_configuration_name" {
  description = "The name for the frontend IP configuration on the Load Balancer"
  type        = string
}

variable "tags" {
  type = map(string)
}