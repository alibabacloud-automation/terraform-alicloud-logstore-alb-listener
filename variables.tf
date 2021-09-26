variable "region" {
  description = "Default region."
  type        = string
  default     = "cn-beijing"
}

variable "name" {
  description = "Default name."
  type        = string
  default     = "tf-testaccalblistener"
}

variable "alb_listener_description" {
  description = "The description of alb listener"
  type        = string
  default     = "Description"
}

variable "alb_listener_protocol" {
  description = "The protocol of alb listener"
  type        = string
  default     = "HTTPS"
}

variable "port" {
  description = "The port of ALB"
  type        = number
  default     = 8886
}


variable "cert" {
  description = "The content of certificate"
  type        = string
}

variable "key" {
  description = "The content of certificate key"
  type        = string
}

variable "alb_server_group_protocol" {
  description = "The protocol of alb server group"
  type        = string
  default     = "HTTP"
}

variable "vpc_id" {
  description = "Vpc ID"
  type        = string
}

variable "resource_group_id" {
  description = "The ID of resource group"
  type        = string
  default     = ""
}

variable "alb_server_health_check_enable" {
  description = "Whether enable health check."
  type        = bool
  default     = false
}

variable "alb_sticky_session_enable" {
  description = "Whether enable alb sticky session"
  type        = bool
  default     = false
}

variable "alb_address_type" {
  description = "The type of alb address"
  type        = string
  default     = "Internet"
}

variable "alb_address_allocated_mode" {
  description = "The allocated mode of address"
  type        = string
  default     = "Fixed"
}

variable "alb_balancer_edition" {
  description = "The edition of alb balancer"
  type        = string
  default     = "Standard"
}

variable "vswtich_id_1" {
  description = "One of vswtich ID"
  type        = string
}

variable "zone_id_1" {
  description = "One of zone id"
  type        = string
}

variable "vswtich_id_2" {
  description = "The other ID of vswitch"
  type        = string
}

variable "zone_id_2" {
  description = "The other id of zone"
  type        = string
}

variable "log_store_shard_count" {
  description = "The shard count of log store"
  type        = string
  default     = "3"
}

variable "log_auto_split" {
  description = "Whether enable log auto split"
  type        = bool
  default     = true
}

variable "log_split_shard_count" {
  description = "The count of log split shard"
  type        = string
  default     = "60"
}

variable "log_append_meta" {
  description = "Whethere enable append meta"
  type        = bool
  default     = true
}

variable "log_store_description" {
  description = "The description of log store"
  type        = string
  default     = "Default description of log store"
}
