resource "alicloud_log_project" "default" {
  name        = var.name
  description = var.log_store_description
}

resource "alicloud_log_store" "default" {
  project               = alicloud_log_project.default.name
  name                  = var.name
  shard_count           = var.log_store_shard_count
  auto_split            = var.log_auto_split
  max_split_shard_count = var.log_split_shard_count
  append_meta           = var.log_append_meta
}

resource "alicloud_alb_load_balancer" "default" {
  vpc_id                 = var.vpc_id
  address_type           = var.alb_address_type
  address_allocated_mode = var.alb_address_allocated_mode
  load_balancer_name     = var.name
  load_balancer_edition  = var.alb_balancer_edition
  resource_group_id      = var.resource_group_id
  load_balancer_billing_config {
    pay_type = "PayAsYouGo"
  }
  zone_mappings {
    vswitch_id = var.vswtich_id_1
    zone_id    = var.zone_id_1
  }
  zone_mappings {
    vswitch_id = var.vswtich_id_2
    zone_id    = var.zone_id_2
  }
  modification_protection_config {
    status = "NonProtection"
  }
  access_log_config {
    log_project = alicloud_log_project.default.name
    log_store   = alicloud_log_store.default.name
  }
}

resource "alicloud_alb_server_group" "default" {
  protocol          = var.alb_server_group_protocol
  vpc_id            = var.vpc_id
  server_group_name = var.name
  resource_group_id = var.resource_group_id
  health_check_config {
    health_check_enabled = var.alb_server_health_check_enable
  }
  sticky_session_config {
    sticky_session_enabled = var.alb_sticky_session_enable
  }
}

resource "alicloud_ssl_certificates_service_certificate" "default" {
  certificate_name = var.name
  cert             = var.cert
  key              = var.key
}

resource "alicloud_alb_listener" "default" {
  load_balancer_id     = alicloud_alb_load_balancer.default.id
  listener_protocol    = var.alb_listener_protocol
  listener_port        = var.port
  listener_description = var.alb_listener_description
  default_actions {
    type = "ForwardGroup"
    forward_group_config {
      server_group_tuples {
        server_group_id = alicloud_alb_server_group.default.id
      }
    }
  }
  certificates {
    certificate_id = join("-", [alicloud_ssl_certificates_service_certificate.default.id, var.region])
  }
}
