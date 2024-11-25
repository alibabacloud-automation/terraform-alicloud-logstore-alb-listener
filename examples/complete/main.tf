data "alicloud_regions" "default" {
  current = true
}

data "alicloud_alb_zones" "default" {
}

data "alicloud_resource_manager_resource_groups" "default" {
}

module "vpc" {
  source  = "alibaba/vpc/alicloud"
  version = "~>1.11.0"

  create             = true
  vpc_cidr           = "172.16.0.0/12"
  vswitch_cidrs      = [cidrsubnet("172.16.0.0/12", 8, 2), cidrsubnet("172.16.0.0/12", 8, 6)]
  availability_zones = data.alicloud_alb_zones.default.ids
}

module "security_group" {
  source  = "alibaba/security-group/alicloud"
  version = "~>2.4.0"

  vpc_id = module.vpc.this_vpc_id
}

module "example" {
  source = "../.."

  #alicloud_log_project
  name                  = "tf-testacc-log"
  log_store_description = var.log_store_description

  #alicloud_log_store
  log_store_shard_count = var.log_store_shard_count
  log_auto_split        = var.log_auto_split
  log_split_shard_count = var.log_split_shard_count
  log_append_meta       = var.log_append_meta

  #alicloud_alb_load_balancer
  load_balancer_name         = var.load_balancer_name
  alb_address_type           = "Internet"
  alb_address_allocated_mode = "Fixed"
  alb_balancer_edition       = var.alb_balancer_edition
  resource_group_id          = data.alicloud_resource_manager_resource_groups.default.groups[0].id
  vpc_id                     = module.vpc.this_vpc_id
  pay_type                   = "PayAsYouGo"
  vswtich_id_1               = module.vpc.this_vswitch_ids[0]
  vswtich_id_2               = module.vpc.this_vswitch_ids[1]
  zone_id_1                  = data.alicloud_alb_zones.default.zones[0].id
  zone_id_2                  = data.alicloud_alb_zones.default.zones[1].id
  status                     = var.status

  #alicloud_alb_server_group
  server_group_name              = var.server_group_name
  alb_server_group_protocol      = "HTTP"
  alb_server_health_check_enable = false
  alb_sticky_session_enable      = var.alb_sticky_session_enable

  #alicloud_ssl_certificates_service_certificate
  cert = var.ssl_cert
  key  = var.ssl_key

  #alicloud_alb_listener
  alb_listener_protocol    = "HTTP"
  port                     = 8886
  alb_listener_description = var.alb_listener_description
  region                   = data.alicloud_regions.default.regions[0].id

}
