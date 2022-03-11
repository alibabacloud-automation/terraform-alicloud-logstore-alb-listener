#alicloud_log_project
log_store_description = "update-tf-testacc-log-description"

#alicloud_log_store
log_store_shard_count = 3
log_auto_split        = true
log_split_shard_count = 12
log_append_meta       = false

#alicloud_alb_load_balancer
load_balancer_name   = "update-tf-testacc-load-name"
alb_balancer_edition = "Standard"
status               = "ConsoleProtection"

#alicloud_alb_server_group
server_group_name         = "update-tf-testacc-server-group-name"
alb_sticky_session_enable = true

#alicloud_alb_listener
alb_listener_description = "update-tf-testacc-listener-description"