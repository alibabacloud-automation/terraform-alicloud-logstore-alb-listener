#alicloud_log_project
variable "log_store_description" {
  description = "The description of log store."
  type        = string
  default     = "tf-testacc-log-description"
}

#alicloud_log_store
variable "log_store_shard_count" {
  description = "The shard count of log store."
  type        = number
  default     = 2
}

variable "log_auto_split" {
  description = "Whether enable log auto split."
  type        = bool
  default     = false
}

variable "log_split_shard_count" {
  description = "The count of log split shard."
  type        = number
  default     = 10
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
  default     = "tf-testacc-load-name"
}

variable "alb_balancer_edition" {
  description = "The edition of alb balancer."
  type        = string
  default     = "Basic"
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
  default     = "tf-testacc-server-group-name"
}

variable "alb_sticky_session_enable" {
  description = "Whether enable alb sticky session."
  type        = bool
  default     = false
}

#alicloud_alb_listener
variable "alb_listener_description" {
  description = "The description of alb listener."
  type        = string
  default     = "tf-testacc-listener-description"
}