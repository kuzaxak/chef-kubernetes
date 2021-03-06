default['kubernetes']['api']['bind_address']                            = '0.0.0.0'
default['kubernetes']['api']['insecure_bind_address']                   = '127.0.0.1'
default['kubernetes']['api']['insecure_port']                           = 8080
default['kubernetes']['api']['secure_port']                             = 8443
default['kubernetes']['api']['service_cluster_ip_range']                = '10.222.0.0/16'
default['kubernetes']['api']['storage_backend']                         = 'etcd3' # Other possible values: 'etcd3'
default['kubernetes']['api']['storage_media_type']                      = 'application/vnd.kubernetes.protobuf' # Other values: 'application/json'
default['kubernetes']['api']['kubelet_https']                           = true
default['kubernetes']['api']['kubelet_certificate_authority']           = '/etc/kubernetes/ssl/ca.pem'
default['kubernetes']['api']['experimental_encryption_provider_config'] = '/etc/kubernetes/encryption-config.yaml'
default['kubernetes']['api']['kubelet_client_certificate']              = '/etc/kubernetes/ssl/apiserver.pem'
default['kubernetes']['api']['kubelet_client_key']                      = '/etc/kubernetes/ssl/apiserver-key.pem'
default['kubernetes']['api']['endpoint_reconciler_type']                = 'lease' # Other possible values: 'master-count', 'none'
default['kubernetes']['api']['etcd_certfile']                           = node['etcd']['cert_file']
default['kubernetes']['api']['etcd_keyfile']                            = node['etcd']['key_file']
default['kubernetes']['api']['etcd_cafile']                             = node['etcd']['trusted_ca_file']
default['kubernetes']['api']['allow_privileged']                        = true
default['kubernetes']['api']['authorization_mode']                      = node['kubernetes']['authorization']['mode']
default['kubernetes']['api']['enable_bootstrap_token_auth']             = nil
default['kubernetes']['api']['tls_cert_file']                           = node['kubernetes']['tls_cert_file']
default['kubernetes']['api']['tls_private_key_file']                    = node['kubernetes']['tls_private_key_file']
default['kubernetes']['api']['client_ca_file']                          = node['kubernetes']['client_ca_file']
default['kubernetes']['api']['service_account_key_file']                = node['kubernetes']['service_account_key_file']
default['kubernetes']['api']['log_dir']                                 = '/var/log/kubernetes'
default['kubernetes']['api']['feature_gates']                           = node['kubernetes']['feature_gates']
default['kubernetes']['api']['enable_admission_plugins']                = %w(
  Initializers
  NamespaceLifecycle
  NodeRestriction
  LimitRanger
  ServiceAccount
  DefaultStorageClass
  ResourceQuota).join(',')
