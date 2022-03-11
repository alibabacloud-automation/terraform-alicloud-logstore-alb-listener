#alicloud_log_project
variable "name" {
  description = "Default name."
  type        = string
  default     = ""
}

variable "log_store_description" {
  description = "The description of log store."
  type        = string
  default     = ""
}

#alicloud_log_store
variable "log_store_shard_count" {
  description = "The shard count of log store."
  type        = number
  default     = 3
}

variable "log_auto_split" {
  description = "Whether enable log auto split."
  type        = bool
  default     = true
}

variable "log_split_shard_count" {
  description = "The count of log split shard."
  type        = number
  default     = 60
}

variable "log_append_meta" {
  description = "Whethere enable append meta."
  type        = bool
  default     = true
}

#alicloud_alb_load_balancer
variable "load_balancer_name" {
  description = "The name of the resource."
  type        = string
  default     = ""
}

variable "alb_address_type" {
  description = "The type of alb address."
  type        = string
  default     = "Internet"
}

variable "alb_address_allocated_mode" {
  description = "The allocated mode of address."
  type        = string
  default     = "Fixed"
}

variable "alb_balancer_edition" {
  description = "The edition of alb balancer."
  type        = string
  default     = "Standard"
}

variable "resource_group_id" {
  description = "The ID of resource group."
  type        = string
  default     = ""
}

variable "vpc_id" {
  description = "Vpc ID."
  type        = string
  default     = ""
}

variable "pay_type" {
  description = "The billing method of the ALB instance."
  type        = string
  default     = "PayAsYouGo"
}

variable "vswtich_id_1" {
  description = "One of vswtich ID."
  type        = string
  default     = ""
}

variable "zone_id_1" {
  description = "One of zone id."
  type        = string
  default     = ""
}

variable "vswtich_id_2" {
  description = "The other ID of vswitch."
  type        = string
  default     = ""
}

variable "zone_id_2" {
  description = "The other id of zone."
  type        = string
  default     = ""
}

variable "status" {
  description = "Specifies whether to enable the configuration read-only mode for the ALB instance."
  type        = string
  default     = "NonProtection"
}

#alicloud_alb_server_group
variable "server_group_name" {
  description = "The name of the resource."
  type        = string
  default     = ""
}

variable "alb_server_group_protocol" {
  description = "The protocol of alb server group."
  type        = string
  default     = "HTTP"
}

variable "alb_server_health_check_enable" {
  description = "Whether enable health check."
  type        = bool
  default     = false
}

variable "alb_sticky_session_enable" {
  description = "Whether enable alb sticky session."
  type        = bool
  default     = false
}

#alicloud_ssl_certificates_service_certificate
variable "cert" {
  description = "The content of certificate."
  type        = string
  default     = ""
}

variable "key" {
  description = "The content of certificate key."
  type        = string
  default     = ""
}

#alicloud_alb_listener
variable "alb_listener_protocol" {
  description = "The protocol of alb listener."
  type        = string
  default     = "HTTPS"
}

variable "port" {
  description = "The port of ALB."
  type        = number
  default     = 8886
}

variable "alb_listener_description" {
  description = "The description of alb listener."
  type        = string
  default     = ""
}

variable "region" {
  description = "Default region."
  type        = string
  default     = ""
}