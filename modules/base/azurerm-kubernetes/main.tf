resource "azurerm_kubernetes_cluster" "this" {

  dynamic "addon_profile" {
    for_each = var.addon_profile_block_enabled == true ? [1] : []
    content {
      dynamic "aci_connector_linux" {
        for_each = var.addon_profile_aci_connector_linux_block_enabled == true ? [1] : []
        content {
          enabled     = var.addon_profile_aci_connector_linux_enabled
          subnet_name = var.addon_profile_aci_connector_linux_subnet_name
        }
      }
      dynamic "azure_policy" {
        for_each = var.addon_profile_azure_policy_block_enabled == true ? [1] : []
        content {
          enabled = var.addon_profile_azure_policy_enabled
        }
      }
      dynamic "http_application_routing" {
        for_each = var.addon_profile_http_application_routing_block_enabled == true ? [1] : []
        content {
          enabled = var.addon_profile_http_application_routing_enabled
        }
      }
      dynamic "kube_dashboard" {
        for_each = var.addon_profile_kube_dashboard_block_enabled == true ? [1] : []
        content {
          enabled = var.addon_profile_kube_dashboard_enabled
        }
      }
      dynamic "oms_agent" {
        for_each = var.addon_profile_oms_agent_block_enabled == true ? [1] : []
        content {
          enabled                    = var.addon_profile_oms_agent_enabled
          log_analytics_workspace_id = var.addon_profile_oms_agent_log_analytics_workspace_id
        }
      }
      dynamic "ingress_application_gateway" {
        for_each = var.addon_profile_ingress_application_gateway_block_enabled == true ? [1] : []
        content {
          enabled      = var.addon_profile_ingress_application_gateway_enabled
          gateway_id   = var.addon_profile_ingress_application_gateway_gateway_id
          gateway_name = var.addon_profile_ingress_application_gateway_gateway_name
          subnet_cidr  = var.addon_profile_ingress_application_gateway_subnet_cidr
          subnet_id    = var.addon_profile_ingress_application_gateway_subnet_id
        }
      }
    }
  }

  api_server_authorized_ip_ranges = var.api_server_authorized_ip_ranges

  dynamic "auto_scaler_profile" {
    for_each = var.auto_scaler_profile_block_enabled == true ? [1] : []
    content {
      balance_similar_node_groups      = var.auto_scaler_profile_balance_similar_node_groups
      empty_bulk_delete_max            = var.auto_scaler_profile_empty_bulk_delete_max
      expander                         = var.auto_scaler_profile_expander
      max_graceful_termination_sec     = var.auto_scaler_profile_max_graceful_termination_sec
      max_node_provisioning_time       = var.auto_scaler_profile_max_node_provisioning_time
      max_unready_nodes                = var.auto_scaler_profile_max_unready_nodes
      max_unready_percentage           = var.auto_scaler_profile_max_unready_percentage
      new_pod_scale_up_delay           = var.auto_scaler_profile_new_pod_scale_up_delay
      scale_down_delay_after_add       = var.auto_scaler_profile_scale_down_delay_after_add
      scale_down_delay_after_delete    = var.auto_scaler_profile_scale_down_delay_after_delete
      scale_down_delay_after_failure   = var.auto_scaler_profile_scale_down_delay_after_failure
      scan_interval                    = var.auto_scaler_profile_scan_interval
      scale_down_unneeded              = var.auto_scaler_profile_scale_down_unneeded
      scale_down_unready               = var.auto_scaler_profile_scale_down_unready
      scale_down_utilization_threshold = var.auto_scaler_profile_scale_down_utilization_threshold
      skip_nodes_with_local_storage    = var.auto_scaler_profile_skip_nodes_with_local_storage
      skip_nodes_with_system_pods      = var.auto_scaler_profile_skip_nodes_with_system_pods
    }
  }

  automatic_channel_upgrade = var.automatic_channel_upgrade

  default_node_pool {
    availability_zones     = var.default_node_pool_type == "VirtualMachineScaleSets" && var.network_profile_load_balancer_sku == "Standard" ? var.default_node_pool_availability_zones : null
    enable_auto_scaling    = var.default_node_pool_type == "VirtualMachineScaleSets" ? var.default_node_pool_enable_auto_scaling : null
    enable_host_encryption = var.default_node_pool_enable_host_encryption
    enable_node_public_ip  = var.default_node_pool_enable_node_public_ip
    fips_enabled           = var.default_node_pool_fips_enabled
    kubelet_disk_type      = var.default_node_pool_kubelet_disk_type

    dynamic "kubelet_config" {
      for_each = var.default_node_pool_kubelet_config_block_enabled == true ? [1] : []
      content {
        allowed_unsafe_sysctls    = var.default_node_pool_kubelet_config_allowed_unsafe_sysctls
        container_log_max_line    = var.default_node_pool_kubelet_config_container_log_max_line
        container_log_max_size_mb = var.default_node_pool_kubelet_config_container_log_max_size_mb
        cpu_cfs_quota_enabled     = var.default_node_pool_kubelet_config_cpu_cfs_quota_enabled
        cpu_cfs_quota_period      = var.default_node_pool_kubelet_config_cpu_cfs_quota_period
        cpu_manager_policy        = var.default_node_pool_kubelet_config_cpu_manager_policy
        image_gc_high_threshold   = var.default_node_pool_kubelet_config_image_gc_high_threshold
        image_gc_low_threshold    = var.default_node_pool_kubelet_config_image_gc_low_threshold
        pod_max_pid               = var.default_node_pool_kubelet_config_pod_max_pid
        topology_manager_policy   = var.default_node_pool_kubelet_config_topology_manager_policy
      }
    }

    dynamic "linux_os_config" {
      for_each = var.default_node_pool_linux_os_config_block_enabled == true ? [1] : []
      content {
        swap_file_size_mb = var.default_node_pool_linux_os_config_swap_file_size_mb

        dynamic "sysctl_config" {
          for_each = var.default_node_pool_linux_os_config_sysctl_config_block_enabled == true ? [1] : []
          content {
            fs_aio_max_nr                      = var.default_node_pool_linux_os_config_sysctl_config_fs_aio_max_nr
            fs_file_max                        = var.default_node_pool_linux_os_config_sysctl_config_fs_file_max
            fs_inotify_max_user_watches        = var.default_node_pool_linux_os_config_sysctl_config_fs_inotify_max_user_watches
            fs_nr_open                         = var.default_node_pool_linux_os_config_sysctl_config_fs_nr_open
            kernel_threads_max                 = var.default_node_pool_linux_os_config_sysctl_config_kernel_threads_max
            net_core_netdev_max_backlog        = var.default_node_pool_linux_os_config_sysctl_config_net_core_netdev_max_backlog
            net_core_optmem_max                = var.default_node_pool_linux_os_config_sysctl_config_net_core_optmem_max
            net_core_rmem_default              = var.default_node_pool_linux_os_config_sysctl_config_net_core_rmem_default
            net_core_rmem_max                  = var.default_node_pool_linux_os_config_sysctl_config_net_core_rmem_max
            net_core_somaxconn                 = var.default_node_pool_linux_os_config_sysctl_config_net_core_somaxconn
            net_core_wmem_default              = var.default_node_pool_linux_os_config_sysctl_config_net_core_wmem_default
            net_core_wmem_max                  = var.default_node_pool_linux_os_config_sysctl_config_net_core_wmem_max
            net_ipv4_ip_local_port_range_max   = var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_ip_local_port_range_max
            net_ipv4_ip_local_port_range_min   = var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_ip_local_port_range_min
            net_ipv4_neigh_default_gc_thresh1  = var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_neigh_default_gc_thresh1
            net_ipv4_neigh_default_gc_thresh2  = var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_neigh_default_gc_thresh2
            net_ipv4_neigh_default_gc_thresh3  = var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_neigh_default_gc_thresh3
            net_ipv4_tcp_fin_timeout           = var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_fin_timeout
            net_ipv4_tcp_keepalive_intvl       = var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_keepalive_intvl
            net_ipv4_tcp_keepalive_time        = var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_keepalive_time
            net_ipv4_tcp_keepalive_probes      = var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_keepalive_probes
            net_ipv4_tcp_max_syn_backlog       = var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_max_syn_backlog
            net_ipv4_tcp_max_tw_buckets        = var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_max_tw_buckets
            net_ipv4_tcp_tw_reuse              = var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_tw_reuse
            net_netfilter_nf_conntrack_buckets = var.default_node_pool_linux_os_config_sysctl_config_net_netfilter_nf_conntrack_buckets
            net_netfilter_nf_conntrack_max     = var.default_node_pool_linux_os_config_sysctl_config_net_netfilter_nf_conntrack_max
            vm_max_map_count                   = var.default_node_pool_linux_os_config_sysctl_config_vm_max_map_count
            vm_swappiness                      = var.default_node_pool_linux_os_config_sysctl_config_vm_swappiness
            vm_vfs_cache_pressure              = var.default_node_pool_linux_os_config_sysctl_config_vm_vfs_cache_pressure
          }
        }

        transparent_huge_page_defrag  = var.default_node_pool_linux_os_config_transparent_huge_page_defrag
        transparent_huge_page_enabled = var.default_node_pool_linux_os_config_transparent_huge_page_enabled
      }
    }

    max_count                    = var.default_node_pool_enable_auto_scaling == true ? var.default_node_pool_max_count : null
    min_count                    = var.default_node_pool_enable_auto_scaling == true ? var.default_node_pool_min_count : null
    max_pods                     = var.default_node_pool_max_pods
    name                         = var.default_node_pool_name
    node_count                   = var.default_node_pool_node_count
    node_labels                  = var.default_node_pool_node_labels
    node_public_ip_prefix_id     = var.default_node_pool_node_public_ip_prefix_id
    only_critical_addons_enabled = var.default_node_pool_only_critical_addons_enabled
    orchestrator_version         = var.default_node_pool_orchestrator_version
    os_disk_type                 = var.default_node_pool_os_disk_type
    os_disk_size_gb              = var.default_node_pool_os_disk_size_gb
    os_sku                       = var.default_node_pool_os_sku
    pod_subnet_id                = var.default_node_pool_pod_subnet_id
    tags                         = var.default_node_pool_tags
    type                         = var.default_node_pool_type
    ultra_ssd_enabled            = var.default_node_pool_ultra_ssd_enabled

    dynamic "upgrade_settings" {
      for_each = var.default_node_pool_upgrade_settings_block_enabled == true ? [1] : []
      content {
        max_surge = var.default_node_pool_upgrade_settings_max_surge
      }
    }

    vm_size        = var.default_node_pool_vm_size
    vnet_subnet_id = var.default_node_pool_vnet_subnet_id
  }

  disk_encryption_set_id     = var.disk_encryption_set_id
  dns_prefix                 = var.dns_prefix
  dns_prefix_private_cluster = var.dns_prefix_private_cluster

  dynamic "identity" {
    for_each = var.identity_block_enabled == true ? [1] : []
    content {
      type                      = var.identity_type
      user_assigned_identity_id = var.identity_user_assigned_identity_id
    }
  }

  dynamic "kubelet_identity" {
    for_each = var.kubelet_identity_block_enabled == true ? [1] : []
    content {
      client_id                 = var.kubelet_identity_client_id
      object_id                 = var.kubelet_identity_object_id
      user_assigned_identity_id = var.kubelet_identity_user_assigned_identity_id
    }
  }

  kubernetes_version = var.kubernetes_version

  dynamic "linux_profile" {
    for_each = var.linux_profile_block_enabled == true ? [1] : []
    content {
      admin_username = var.linux_profile_admin_username
      ssh_key {
        key_data = var.linux_profile_ssh_key_data
      }
    }
  }

  local_account_disabled = var.local_account_disabled
  location               = var.location

  dynamic "maintenance_window" {
    for_each = var.maintenance_window_block_enabled == true ? [1] : []
    content {
      dynamic "allowed" {
        for_each = var.maintenance_window_allowed != null ? var.maintenance_window_allowed : []
        content {
          day   = allowed.value["day"]
          hours = allowed.value["hours"]
        }
      }
      dynamic "not_allowed" {
        for_each = var.maintenance_window_not_allowed != null ? var.maintenance_window_not_allowed : []
        content {
          end   = not_allowed.value["end"]
          start = not_allowed.value["start"]
        }
      }
    }
  }

  name = var.name

  dynamic "network_profile" {
    for_each = var.network_profile_block_enabled == true ? [1] : []
    content {
      dns_service_ip     = var.network_profile_dns_service_ip
      docker_bridge_cidr = var.network_profile_docker_bridge_cidr
      dynamic "load_balancer_profile" {
        for_each = var.network_profile_load_balancer_sku == "Standard" && var.network_profile_load_balancer_profile_block_enabled == true ? [1] : []
        content {
          idle_timeout_in_minutes   = var.network_profile_load_balancer_profile_idle_timeout_in_minutes
          managed_outbound_ip_count = var.network_profile_load_balancer_profile_managed_outbound_ip_count
          outbound_ip_address_ids   = var.network_profile_load_balancer_profile_outbound_ip_address_ids
          outbound_ip_prefix_ids    = var.network_profile_load_balancer_profile_outbound_ip_prefix_ids
          outbound_ports_allocated  = var.network_profile_load_balancer_profile_outbound_ports_allocated
        }
      }
      load_balancer_sku = var.network_profile_load_balancer_sku
      network_mode      = var.network_profile_network_plugin == "azure" ? var.network_profile_network_mode : null
      network_policy    = var.network_profile_network_policy
      network_plugin    = var.network_profile_network_plugin
      outbound_type     = var.network_profile_outbound_type
      pod_cidr          = var.network_profile_network_plugin == "azure" ? null : var.network_profile_pod_cidr
      service_cidr      = var.network_profile_service_cidr
    }
  }

  node_resource_group = var.node_resource_group

  private_cluster_enabled             = var.private_cluster_enabled
  private_cluster_public_fqdn_enabled = var.private_cluster_public_fqdn_enabled
  private_dns_zone_id                 = var.private_dns_zone_id

  resource_group_name = var.resource_group_name

  dynamic "role_based_access_control" {
    for_each = var.role_based_access_control_block_enabled == true ? [1] : []
    content {
      dynamic "azure_active_directory" {
        for_each = var.role_based_access_control_azure_active_directory_block_enabled == true ? [1] : []
        content {
          admin_group_object_ids = var.role_based_access_control_azure_active_directory_managed == true ? var.role_based_access_control_azure_active_directory_admin_group_object_ids : null
          azure_rbac_enabled     = var.role_based_access_control_azure_active_directory_managed == true ? var.role_based_access_control_azure_active_directory_azure_rbac_enabled : null
          client_app_id          = var.role_based_access_control_azure_active_directory_managed == false ? var.role_based_access_control_azure_active_directory_client_app_id : null
          managed                = var.role_based_access_control_azure_active_directory_managed
          server_app_id          = var.role_based_access_control_azure_active_directory_managed == false ? var.role_based_access_control_azure_active_directory_server_app_id : null
          server_app_secret      = var.role_based_access_control_azure_active_directory_managed == false ? var.role_based_access_control_azure_active_directory_server_app_secret : null
          tenant_id              = var.role_based_access_control_azure_active_directory_tenant_id
        }
      }
      enabled = var.role_based_access_control_enabled
    }
  }

  dynamic "service_principal" {
    for_each = var.service_principal_block_enabled == true && var.identity_block_enabled == false ? [1] : []
    content {
      client_id     = var.service_principal_client_id
      client_secret = var.service_principal_client_secret
    }
  }

  sku_tier = var.sku_tier
  tags     = var.tags

  dynamic "windows_profile" {
    for_each = var.windows_profile_block_enabled == true ? [1] : []
    content {
      admin_username = var.windows_profile_admin_username
      admin_password = var.windows_profile_admin_password
      license        = var.windows_profile_license
    }
  }
}
