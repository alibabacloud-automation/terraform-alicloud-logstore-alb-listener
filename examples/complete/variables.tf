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

variable "ssl_cert" {
  description = "The value of ssl cert."
  type        = string
  default     = "-----BEGIN CERTIFICATE-----\nMIID4jCCAsqgAwIBAgIQMQiIsoVBQA6ngOHV3dbINTANBgkqhkiG9w0BAQsFADBe\nMQswCQYDVQQGEwJDTjEOMAwGA1UEChMFTXlTU0wxKzApBgNVBAsTIk15U1NMIFRl\nc3QgUlNBIC0gRm9yIHRlc3QgdXNlIG9ubHkxEjAQBgNVBAMTCU15U1NMLmNvbTAe\nFw0yNDExMjUwNTQ2MTNaFw0yOTExMjQwNTQ2MTNaMCYxCzAJBgNVBAYTAkNOMRcw\nFQYDVQQDEw50Zi1leGFtcGxlLmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCC\nAQoCggEBANzcOoXaKpNg6H4gXe70qVuQGIXPuVN/CrZpQeceft50MwiqjCpVydn6\n0M254CMPqPt8lFHDN+owEcroriKzGMjRxtgGVvcezKvilZzqp0vpNU9KL3DYQ6l6\nBd7KsI7RuiJEBz2ZXyQQuKw4ULikdMhIsyXzN1artuRMyp/01S3lRW9XuWa4lJ/X\nJPA/IAYgjUKT32lTWjpumwjfG6xoT+x4rO8S/e/gzToimIim+3eqzatpSFapVnVT\nWbGB6G+rs6n/m1ITH612Vz03eIM763wM5kEmD8jtr8z4R+QGHMh/xVDgoKpXDbID\nN+Ndszqw8uYH8vEJXEAzxaGJRdY4yC8CAwEAAaOB0zCB0DAOBgNVHQ8BAf8EBAMC\nBaAwHQYDVR0lBBYwFAYIKwYBBQUHAwEGCCsGAQUFBwMCMB8GA1UdIwQYMBaAFCiB\nJgXRNBo/wXMPu5PPFRw/A79/MGMGCCsGAQUFBwEBBFcwVTAhBggrBgEFBQcwAYYV\naHR0cDovL29jc3AubXlzc2wuY29tMDAGCCsGAQUFBzAChiRodHRwOi8vY2EubXlz\nc2wuY29tL215c3NsdGVzdHJzYS5jcnQwGQYDVR0RBBIwEIIOdGYtZXhhbXBsZS5j\nb20wDQYJKoZIhvcNAQELBQADggEBAGdBWZJ37LqK1Q4YqK2yaETbJ/c5WKmxX/+V\nStgRwkwuf9sc6Hzaw0kjZx5Xzq4XdCupnwhXq3FSkkYlCevzM1HZo8mthRYJqGKU\nv/6mYMi2E+dS+vLDWUAzSE4w/wd3hClUrretP8RcUpskVlE1bvitc90ZTJyJt6R2\nT7Uts6+bA3v0hv0FRgeiJIawRdOnuRtsDi2OU/8l8ktP07J0CJ6XkSmeM4RbgAdy\n8FT2vwIEEqabN37mKKnslYqlBnE/OANlxuDlFNiXaw1vKmJo0l0aRE5ga3fm9TRt\nElTnCyO4aDLWDahYWEsr6u7N+87qd7sFdI99H1dkxGruVSCbhC0=\n-----END CERTIFICATE-----\n"
}

variable "ssl_key" {
  description = "The value of ssl key."
  type        = string
  default     = "-----BEGIN RSA PRIVATE KEY-----\nMIIEpAIBAAKCAQEA3Nw6hdoqk2DofiBd7vSpW5AYhc+5U38KtmlB5x5+3nQzCKqM\nKlXJ2frQzbngIw+o+3yUUcM36jARyuiuIrMYyNHG2AZW9x7Mq+KVnOqnS+k1T0ov\ncNhDqXoF3sqwjtG6IkQHPZlfJBC4rDhQuKR0yEizJfM3Vqu25EzKn/TVLeVFb1e5\nZriUn9ck8D8gBiCNQpPfaVNaOm6bCN8brGhP7His7xL97+DNOiKYiKb7d6rNq2lI\nVqlWdVNZsYHob6uzqf+bUhMfrXZXPTd4gzvrfAzmQSYPyO2vzPhH5AYcyH/FUOCg\nqlcNsgM3412zOrDy5gfy8QlcQDPFoYlF1jjILwIDAQABAoIBADJGFzQ80xA1MPb0\n2yz3mE11YX+kJyVwd7nJ/+xiLrLodG12lO1WFdp+k2Ug+HpCqE6GryRlcabnRkWP\n7YOMjQm5Zq/p0YXzBtfhffj4GRjYfwALfP0M3WoIkqmCLep0pxABuDw3W0bUX5Uk\nRIujM8obclwjHuelsr4JFN6QVq5ZY8OaTU/lMtjJICsbT5lMvl3kkN+DOliTXIv6\njW4l0fmkt6AkkpKrGvOSD+y/7Y1pobBF4rKJEkhK723UsmGkEYZCl1AWxKmATN17\nOohAl+HG4jS+/lIx8R1hEkkQFNUeeqdDmilywbqp1/gDh/692rukK0ySthjCmucr\nRTEy6fECgYEA5je3MAty8dg4lLQDjbTw/2KBZG9KoJ0fHHhuSE9cjVHAiu5Wr8L0\nImf0qvjm30Pk3pAuRllqI0MjmoUoHPebgAP8Xhuo4//Vl6Z3A9n81jgBVvg+To+C\nLRVNq3FvzYZkfiLI98iAiw60eQ3JXrRNkar/S3s4LXEp11eCb9wUdFMCgYEA9Zg9\nTIlSbMJECu2/5qrlFV0Nl/n/fsHm1J5A0h2rAd35+RPZVCBD/H5IFtXwdpSkExxW\nCTlHN5DSo4gfcg6fIOdSzWrj7B4dkUJjptAc3N7AObqf1YWbo/OoAiwwRnOTKkB7\n68o+YS9YLEB/bbY79DxkIz5AVkCp1oI1BpFKITUCgYEAwcImxaL9LRrkFBOl4gBl\nzSuk51jboG5dHuMlPmq85Jvnx4ZtIySbwNFplPRDq6lC2SbUK5VZxS/eqVBkwGyN\nTaMNJk91R9+sbyRFitJPACTGy+HG3uvdjgAeDKs+g+YWciropdL0jRTlQ/UchD6Q\nAoe+slKUp3pU0s7uEyNRe80CgYEAoaUdG4X6sUi/vi2zs9/hPclsTA4oosZ+5oxu\nf501U9pFUDJHRb6i4MpBKn6PcYzt3QI2goWnoSP579aFU+3ZwK9gaYGkGGHN9jCr\nJD0v8hPOk3CJCOGSijux5hQthgFF6HZe2dfYbODbeOzOsmhSV7Nz+VpcwCh5YI18\n1yDDmM0CgYAoxTpWKhw8eAQFmmWV1pgPuTT7rF5QAyqcwjQPeUWhKuA5kyBmpQ5l\nrlYTMoA7DAtYhjBy+OkZWfbST0t6ZNsVGZUj8ryrVI7Vj5i1TxSsI3kVFkyt7WXs\n9aWQrquvpdXetCKXodu+nJKSqL87Q6W4/HAaCboO+8iHZGKjAuFWxQ==\n-----END RSA PRIVATE KEY-----\n"
}
