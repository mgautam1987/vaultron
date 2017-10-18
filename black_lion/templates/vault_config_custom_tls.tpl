###
### Vaultron: Vault custom configuration file (with TLS support)
###

cluster_name = "${cluster_name }"
ui = true

storage "consul" {
  address = "${consul_address}:8500"
  path = "vault/"
  disable_clustering = "${disable_clustering}"
  service_tags = "${service_tags}"
}

listener "tcp" {
  address = "${address}"
  tls_disable = "false"
  tls_cert_file = "${tls_cert}"
  tls_key_file = "${tls_key}"
}

plugin_directory  = "/vault/plugins"