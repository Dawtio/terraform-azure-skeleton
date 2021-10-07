variable "name" {
  description = "The name of the Managed Kubernetes Cluster to create."
  type        = string
}

variable "resource_group_name" {
  description = "Specifies the Resource Group where the Managed Kubernetes Cluster should exist."
  type        = string
}

# variable "automatic_channel_upgrade" {
#   description = "The upgrade channel for this Kubernetes Cluster."
#   type        = string
#   default     = null

#   validation {
#     condition     = var.automatic_channel_upgrade == null || can(regex("^(patch|rapid|node-image|stable)$", var.automatic_channel_upgrade))
#     error_message = "Possible values are patch, rapid, node-image and stable."
#   }
# }

# variable "api_server_authorized_ip_ranges" {
#   description = "The IP ranges to allow for incoming traffic to the server nodes."
#   type        = list(string)
#   default     = null
# }

# variable "disk_encryption_set_id" {
#   description = "The ID of the Disk Encryption Set which should be used for the Nodes and Volumes."
#   type        = string
#   default     = null
# }

# variable "kubernetes_version" {
#   description = "Version of Kubernetes specified when creating the AKS managed cluster."
#   type        = string
#   default     = null
# }

# variable "local_account_disabled" {
#   description = "Is local account disabled for AAD integrated kubernetes cluster?"
#   type        = bool
#   default     = null
# }

# variable "node_resource_group" {
#   description = "The name of the Resource Group where the Kubernetes Nodes should exist."
#   type        = string
#   default     = null
# }

# variable "private_cluster_enabled" {
#   description = "Should this Kubernetes Cluster have its API server only exposed on internal IP addresses?"
#   type        = bool
#   default     = false
# }

# variable "private_dns_zone_id" {
#   description = "Either the ID of Private DNS Zone which should be delegated to this Cluster, System to have AKS manage this or None."
#   type        = string
#   default     = null
# }

# variable "private_cluster_public_fqdn_enabled" {
#   description = "Specifies whether a Public FQDN for this Private Cluster should be added."
#   type        = bool
#   default     = false
# }

# variable "location" {
#   description = "The location where the Managed Kubernetes Cluster should be created."
#   type        = string
#   default     = null
# }

# variable "dns_prefix" {
#   description = "DNS prefix specified when creating the managed cluster."
#   type        = string
#   default     = null

#   validation {
#     condition     = var.dns_prefix == null || can(length(var.dns_prefix) >= 3 && regex("^[^\\-][a-zA-Z0-9\\-]*[^\\-]$", var.dns_prefix) && length(var.dns_prefix) <= 45)
#     error_message = "The dns_prefix must contain between 3 and 45 characters, and can contain only letters, numbers, and hyphens. It must start with a letter and must end with a letter or a number."
#   }
# }

# variable "sku_tier" {
#   description = "The SKU Tier that should be used for this Kubernetes Cluster."
#   type        = string
#   default     = "Free"

#   validation {
#     condition     = can(regex("^(Free|Paid)$", var.sku_tier))
#     error_message = "Possible values are Free and Paid (which includes the Uptime SLA)."
#   }
# }

# variable "dns_prefix_private_cluster" {
#   description = "Specifies the DNS prefix to use with private clusters."
#   type        = string
#   default     = null
# }

# variable "tags" {
#   description = "A mapping of tags to assign to the resource."
#   type        = map(string)
#   default = {
#     terraform = "true",
#   }
# }

# variable "auto_scaler_profile_block_enabled" {
#   description = "Should the Auto Scaler Profile Block be enabled?"
#   type        = bool
#   default     = false
# }

# variable "auto_scaler_profile_balance_similar_node_groups" {
#   description = "Detect similar node groups and balance the number of nodes between them."
#   type        = bool
#   default     = false
# }

# variable "auto_scaler_profile_expander" {
#   description = "Expander to use."
#   type        = string
#   default     = "random"

#   validation {
#     condition     = can(regex("^(least-waste|priority|most-pods|random)$", var.auto_scaler_profile_expander))
#     error_message = "Possible values are least-waste, priority, most-pods and random."
#   }
# }

# variable "auto_scaler_profile_max_graceful_termination_sec" {
#   description = "Maximum number of seconds the cluster autoscaler waits for pod termination when trying to scale down a node."
#   type        = number
#   default     = 600
# }

# variable "auto_scaler_profile_max_node_provisioning_time" {
#   description = "Maximum time the autoscaler waits for a node to be provisioned."
#   type        = string
#   default     = "15m"
# }

# variable "auto_scaler_profile_max_unready_nodes" {
#   description = "Maximum Number of allowed unready nodes."
#   type        = number
#   default     = 3
# }

# variable "auto_scaler_profile_max_unready_percentage" {
#   description = "Maximum percentage of unready nodes the cluster autoscaler will stop if the percentage is exceeded."
#   type        = number
#   default     = 45
# }

# variable "auto_scaler_profile_new_pod_scale_up_delay" {
#   description = "For scenarios like burst/batch scale where you don't want CA to act before the kubernetes scheduler could schedule all the pods, you can tell CA to ignore unscheduled pods before they're a certain age."
#   type        = string
#   default     = "10s"
# }

# variable "auto_scaler_profile_scale_down_delay_after_add" {
#   description = "How long after the scale up of AKS nodes the scale down evaluation resumes."
#   type        = string
#   default     = "10m"
# }

# variable "auto_scaler_profile_scale_down_delay_after_delete" {
#   description = "How long after node deletion that scale down evaluation resumes."
#   type        = string
#   default     = "10s"
# }

# variable "auto_scaler_profile_scale_down_delay_after_failure" {
#   description = "How long after scale down failure that scale down evaluation resumes."
#   type        = string
#   default     = "3m"
# }

# variable "auto_scaler_profile_scan_interval" {
#   description = "How often the AKS Cluster should be re-evaluated for scale up/down."
#   type        = string
#   default     = "10s"
# }

# variable "auto_scaler_profile_scale_down_unneeded" {
#   description = "How long a node should be unneeded before it is eligible for scale down."
#   type        = string
#   default     = "10m"
# }

# variable "auto_scaler_profile_scale_down_unready" {
#   description = "How long an unready node should be unneeded before it is eligible for scale down."
#   type        = string
#   default     = "20m"
# }

# variable "auto_scaler_profile_scale_down_utilization_threshold" {
#   description = "Node utilization level, defined as sum of requested resources divided by capacity, below which a node can be considered for scale down."
#   type        = string
#   default     = "0.5"
# }

# variable "auto_scaler_profile_empty_bulk_delete_max" {
#   description = "Maximum number of empty nodes that can be deleted at the same time."
#   type        = number
#   default     = 10
# }

# variable "auto_scaler_profile_skip_nodes_with_local_storage" {
#   description = "If true cluster autoscaler will never delete nodes with pods with local storage, for example, EmptyDir or HostPath."
#   type        = bool
#   default     = true
# }

# variable "auto_scaler_profile_skip_nodes_with_system_pods" {
#   description = "If true cluster autoscaler will never delete nodes with pods from kube-system (except for DaemonSet or mirror pods)."
#   type        = bool
#   default     = true
# }

# variable "kubelet_identity_block_enabled" {
#   description = "Should the Kubelet Identity Block be enabled? If not specified a Managed Identity is created automatically."
#   type        = bool
#   default     = false
# }

# variable "kubelet_identity_client_id" {
#   description = "The Client ID of the user-defined Managed Identity to be assigned to the Kubelets."
#   type        = string
#   default     = null
# }

# variable "kubelet_identity_object_id" {
#   description = "The Object ID of the user-defined Managed Identity assigned to the Kubelets."
#   type        = string
#   default     = null
# }

# variable "kubelet_identity_user_assigned_identity_id" {
#   description = "The ID of the User Assigned Identity assigned to the Kubelets."
#   type        = string
#   default     = null
# }

# variable "linux_profile_block_enabled" {
#   description = "Should the Linux Profile Block be enabled?"
#   type        = bool
#   default     = false
# }

# variable "linux_profile_admin_username" {
#   description = "The Admin Username for the Cluster."
#   type        = string
#   default     = null
# }

# variable "linux_profile_ssh_key_data" {
#   description = "The Public SSH Key used to access the cluster."
#   type        = string
#   default     = null
# }

# variable "service_principal_block_enabled" {
#   description = "Should the Service Principal Block be enabled?"
#   type        = bool
#   default     = false
# }

# variable "service_principal_client_id" {
#   description = "The Client ID for the Service Principal."
#   type        = string
#   default     = null
# }

# variable "service_principal_client_secret" {
#   description = "The Client Secret for the Service Principal."
#   type        = string
#   default     = null
# }

# variable "windows_profile_block_enabled" {
#   description = "Should the Windows Profile Block be enabled?"
#   type        = bool
#   default     = false
# }

# variable "windows_profile_admin_username" {
#   description = "The Admin Username for Windows VMs."
#   type        = string
#   default     = null
# }

# variable "windows_profile_admin_password" {
#   description = "The Admin Password for Windows VMs."
#   type        = string
#   default     = null

#   validation {
#     condition     = var.windows_profile_admin_password == null || can(length(var.windows_profile_admin_password) >= 14 && length(var.windows_profile_admin_password) <= 123)
#     error_message = "Length must be between 14 and 123 characters."
#   }
# }

# variable "windows_profile_license" {
#   description = "Specifies the type of on-premise license which should be used for Node Pool Windows Virtual Machine. At this time the only possible value is Windows_Server."
#   type        = string
#   default     = "Windows_Server"
# }

# variable "identity_block_enabled" {
#   description = "Should the Identity Block be enabled?"
#   type        = bool
#   default     = false
# }

# variable "identity_type" {
#   description = "The type of identity used for the managed cluster."
#   type        = string
#   default     = null

#   validation {
#     condition     = var.identity_type == null || can(regex("^(SystemAssigned|UserAssigned)$", var.identity_type))
#     error_message = "Possible values are SystemAssigned and UserAssigned."
#   }
# }

# variable "identity_user_assigned_identity_id" {
#   description = "The ID of a user assigned identity."
#   type        = string
#   default     = null
# }

# variable "addon_profile_block_enabled" {
#   description = "Should the Addon Profile Block be enabled?"
#   type        = bool
#   default     = true
# }

# variable "addon_profile_aci_connector_linux_block_enabled" {
#   description = "Should the ACI Connector Linux Block be enabled?"
#   type        = bool
#   default     = false
# }

# variable "addon_profile_aci_connector_linux_enabled" {
#   description = "Is the virtual node addon enabled?"
#   type        = bool
#   default     = null
# }

# variable "addon_profile_aci_connector_linux_subnet_name" {
#   description = "The subnet name for the virtual nodes to run."
#   type        = string
#   default     = null
# }

# variable "addon_profile_azure_policy_block_enabled" {
#   description = "Should the Azure Policy Block be enabled?"
#   type        = bool
#   default     = false
# }

# variable "addon_profile_azure_policy_enabled" {
#   description = "Is the Azure Policy for Kubernetes Add On enabled?"
#   type        = bool
#   default     = null
# }

# variable "addon_profile_http_application_routing_block_enabled" {
#   description = "Should the HTTP Application Routing Block be enabled?"
#   type        = bool
#   default     = false
# }

# variable "addon_profile_http_application_routing_enabled" {
#   description = "Is HTTP Application Routing Enabled?"
#   type        = bool
#   default     = null
# }

# variable "addon_profile_kube_dashboard_block_enabled" {
#   description = "Should the Kube Dashboard Block be enabled?"
#   type        = bool
#   default     = false
# }

# variable "addon_profile_kube_dashboard_enabled" {
#   description = "Is the Kubernetes Dashboard enabled?"
#   type        = bool
#   default     = null
# }

# variable "addon_profile_oms_agent_block_enabled" {
#   description = "Should the OMS Agent Block be enabled?"
#   type        = bool
#   default     = true
# }

# variable "addon_profile_oms_agent_enabled" {
#   description = "Is the OMS Agent Enabled?"
#   type        = bool
#   default     = true
# }

# variable "addon_profile_oms_agent_log_analytics_workspace_id" {
#   description = "The ID of the Log Analytics Workspace which the OMS Agent should send data to."
#   type        = string
#   default     = null
# }

# variable "addon_profile_ingress_application_gateway_block_enabled" {
#   description = "Should the Ingress Application Gateway Block be enabled?"
#   type        = bool
#   default     = false
# }

# variable "addon_profile_ingress_application_gateway_enabled" {
#   description = "Whether to deploy the Application Gateway ingress controller to this Kubernetes Cluster?"
#   type        = bool
#   default     = null
# }

# variable "addon_profile_ingress_application_gateway_gateway_id" {
#   description = "The ID of the Application Gateway to integrate with the ingress controller of this Kubernetes Cluster."
#   type        = string
#   default     = null
# }

# variable "addon_profile_ingress_application_gateway_gateway_name" {
#   description = "The name of the Application Gateway to be used or created in the Nodepool Resource Group, which in turn will be integrated with the ingress controller of this Kubernetes Cluster."
#   type        = string
#   default     = null
# }

# variable "addon_profile_ingress_application_gateway_subnet_cidr" {
#   description = "The subnet CIDR to be used to create an Application Gateway, which in turn will be integrated with the ingress controller of this Kubernetes Cluster."
#   type        = string
#   default     = null
# }

# variable "addon_profile_ingress_application_gateway_subnet_id" {
#   description = "The ID of the subnet on which to create an Application Gateway, which in turn will be integrated with the ingress controller of this Kubernetes Cluster."
#   type        = string
#   default     = null
# }

# variable "network_profile_block_enabled" {
#   description = "Should the Network Profile Block be enabled?"
#   type        = bool
#   default     = false
# }

# variable "network_profile_network_plugin" {
#   description = "Network plugin to use for networking."
#   type        = string
#   default     = null

#   validation {
#     condition     = var.network_profile_network_plugin == null || can(regex("^(azure|kubenet)$", var.network_profile_network_plugin))
#     error_message = "Currently supported values are azure and kubenet."
#   }
# }

# variable "network_profile_network_mode" {
#   description = "Network mode to be used with Azure CNI."
#   type        = string
#   default     = null

#   validation {
#     condition     = var.network_profile_network_mode == null || can(regex("^transparent$", var.network_profile_network_mode))
#     error_message = "Possible values is transparent."
#   }
# }

# variable "network_profile_network_policy" {
#   description = "Sets up network policy to be used with Azure CNI."
#   type        = string
#   default     = null

#   validation {
#     condition     = var.network_profile_network_policy == null || can(regex("^(calico|azure)$", var.network_profile_network_policy))
#     error_message = "Currently supported values are calico and azure."
#   }
# }

# variable "network_profile_dns_service_ip" {
#   description = "IP address within the Kubernetes service address range that will be used by cluster service discovery (kube-dns)."
#   type        = string
#   default     = null
# }

# variable "network_profile_docker_bridge_cidr" {
#   description = "IP address (in CIDR notation) used as the Docker bridge IP address on nodes."
#   type        = string
#   default     = null
# }

# variable "network_profile_outbound_type" {
#   description = "The outbound (egress) routing method which should be used for this Kubernetes Cluster."
#   type        = string
#   default     = "loadBalancer"

#   validation {
#     condition     = can(regex("^(loadBalancer|userDefinedRouting)$", var.network_profile_outbound_type))
#     error_message = "Possible values are loadBalancer and userDefinedRouting."
#   }
# }

# variable "network_profile_pod_cidr" {
#   description = "The CIDR to use for pod IP addresses."
#   type        = string
#   default     = null
# }

# variable "network_profile_service_cidr" {
#   description = "The Network Range used by the Kubernetes service."
#   type        = string
#   default     = null
# }

# variable "network_profile_load_balancer_sku" {
#   description = "Specifies the SKU of the Load Balancer used for this Kubernetes Cluster."
#   type        = string
#   default     = "Standard"

#   validation {
#     condition     = can(regex("^(Basic|Standard)$", var.network_profile_load_balancer_sku))
#     error_message = "Possible values are Basic and Standard."
#   }
# }

# variable "network_profile_load_balancer_profile_block_enabled" {
#   description = "Should the Load Balancer Profile Block be enabled?"
#   type        = bool
#   default     = false
# }

# variable "network_profile_load_balancer_profile_outbound_ports_allocated" {
#   description = "Number of desired SNAT port for each VM in the clusters load balancer."
#   type        = number
#   default     = 0

#   validation {
#     condition     = can(var.network_profile_load_balancer_profile_outbound_ports_allocated >= 0 && var.network_profile_load_balancer_profile_outbound_ports_allocated <= 64000)
#     error_message = "Must be between 0 and 64000 inclusive."
#   }
# }

# variable "network_profile_load_balancer_profile_idle_timeout_in_minutes" {
#   description = "Desired outbound flow idle timeout in minutes for the cluster load balancer."
#   type        = number
#   default     = 30

#   validation {
#     condition     = can(var.network_profile_load_balancer_profile_idle_timeout_in_minutes >= 4 && var.network_profile_load_balancer_profile_idle_timeout_in_minutes <= 120)
#     error_message = "Must be between 4 and 120 inclusive."
#   }
# }

# variable "network_profile_load_balancer_profile_managed_outbound_ip_count" {
#   description = "Count of desired managed outbound IPs for the cluster load balancer."
#   type        = list(string)
#   default     = []
# }

# variable "network_profile_load_balancer_profile_outbound_ip_prefix_ids" {
#   description = "The ID of the outbound Public IP Address Prefixes which should be used for the cluster load balancer."
#   type        = list(string)
#   default     = []
# }

# variable "network_profile_load_balancer_profile_outbound_ip_address_ids" {
#   description = "The ID of the Public IP Addresses which should be used for outbound communication for the cluster load balancer."
#   type        = list(string)
#   default     = []
# }

# variable "role_based_access_control_block_enabled" {
#   description = "Should the Role Based Access Control Block be enabled?"
#   type        = bool
#   default     = true
# }

# variable "role_based_access_control_azure_active_directory_block_enabled" {
#   description = "Should the Azure Active Directory Block be enabled?"
#   type        = bool
#   default     = true
# }

# variable "role_based_access_control_azure_active_directory_managed" {
#   description = "Is the Azure Active Directory integration Managed, meaning that Azure will create/manage the Service Principal used for integration."
#   type        = bool
#   default     = null
# }

# variable "role_based_access_control_azure_active_directory_tenant_id" {
#   description = "The Tenant ID used for Azure Active Directory Application. If this isn't specified the Tenant ID of the current Subscription is used."
#   type        = string
#   default     = null
# }

# variable "role_based_access_control_azure_active_directory_admin_group_object_ids" {
#   description = "A list of Object IDs of Azure Active Directory Groups which should have Admin Role on the Cluster."
#   type        = list(string)
#   default     = null
# }

# variable "role_based_access_control_azure_active_directory_azure_rbac_enabled" {
#   description = "Is Role Based Access Control based on Azure AD enabled?"
#   type        = bool
#   default     = null
# }

# variable "role_based_access_control_azure_active_directory_client_app_id" {
#   description = "The Client ID of an Azure Active Directory Application."
#   type        = string
#   default     = null
# }

# variable "role_based_access_control_azure_active_directory_server_app_id" {
#   description = "The Server ID of an Azure Active Directory Application."
#   type        = string
#   default     = null
# }

# variable "role_based_access_control_azure_active_directory_server_app_secret" {
#   description = "The Server Secret of an Azure Active Directory Application."
#   type        = string
#   default     = null
# }

# variable "role_based_access_control_enabled" {
#   description = "Is Role Based Access Control Enabled?"
#   type        = bool
#   default     = null
# }

# variable "maintenance_window_block_enabled" {
#   description = "Should the Maintenance Window Block be enabled?"
#   type        = bool
#   default     = false
# }

# variable "maintenance_window_allowed" {
#   description = "List of allowed object."
#   type = list(object({
#     day   = string
#     hours = number
#   }))
#   default = null

#   validation {
#     condition = alltrue([
#       for o in var.maintenance_window_allowed : contains(["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"], o.day)
#     ])
#     error_message = "Possible values for day are Sunday, Monday, Tuesday, Wednesday, Thursday, Friday and Saturday."
#   }

#   validation {
#     condition = alltrue([
#       for o in var.maintenance_window_allowed : o.hours >= 0 && o.hours <= 23
#     ])
#     error_message = "Possible values for hours are between 0 and 23."
#   }
# }

# variable "maintenance_window_not_allowed" {
#   description = "List of not allowed object."
#   type = list(object({
#     end   = string
#     start = string
#   }))
#   default = null
# }

# variable "default_node_pool_name" {
#   description = "The name which should be used for the default Kubernetes Node Pool."
#   type        = string
#   default     = null
# }

# variable "default_node_pool_vm_size" {
#   description = "The size of the Virtual Machine."
#   type        = string
#   default     = null
# }

# variable "default_node_pool_availability_zones" {
#   description = "A list of Availability Zones across which the Node Pool should be spread."
#   type        = list(string)
#   default     = null
# }

# variable "default_node_pool_enable_auto_scaling" {
#   description = "Should the Kubernetes Auto Scaler be enabled for this Node Pool?"
#   type        = bool
#   default     = false
# }

# variable "default_node_pool_enable_host_encryption" {
#   description = "Should the nodes in the Default Node Pool have host encryption enabled?"
#   type        = bool
#   default     = false
# }

# variable "default_node_pool_enable_node_public_ip" {
#   description = "Should nodes in this Node Pool have a Public IP Address?"
#   type        = bool
#   default     = false
# }

# variable "default_node_pool_kubelet_config_block_enabled" {
#   description = "Should the Kubelet Config Block be enabled?"
#   type        = bool
#   default     = false
# }

# variable "default_node_pool_kubelet_config_allowed_unsafe_sysctls" {
#   description = "Specifies the allow list of unsafe sysctls command or patterns (ending in *)."
#   type        = string
#   default     = null
# }

# variable "default_node_pool_kubelet_config_container_log_max_line" {
#   description = "Specifies the maximum number of container log files that can be present for a container. must be at least 2."
#   type        = string
#   default     = null
# }

# variable "default_node_pool_kubelet_config_container_log_max_size_mb" {
#   description = "Specifies the maximum size (e.g. 10MB) of container log file before it is rotated."
#   type        = string
#   default     = null
# }

# variable "default_node_pool_kubelet_config_cpu_cfs_quota_enabled" {
#   description = "Is CPU CFS quota enforcement for containers enabled?"
#   type        = bool
#   default     = null
# }

# variable "default_node_pool_kubelet_config_cpu_cfs_quota_period" {
#   description = "Specifies the CPU CFS quota period value."
#   type        = string
#   default     = null
# }

# variable "default_node_pool_kubelet_config_cpu_manager_policy" {
#   description = "Specifies the CPU Manager policy to use."
#   type        = string
#   default     = null

#   validation {
#     condition     = var.default_node_pool_kubelet_config_cpu_manager_policy == null || can(regex("^(none|static)$", var.default_node_pool_kubelet_config_cpu_manager_policy))
#     error_message = "Possible values are none and static."
#   }
# }

# variable "default_node_pool_kubelet_config_image_gc_high_threshold" {
#   description = "Specifies the percent of disk usage above which image garbage collection is always run."
#   type        = number
#   default     = null

#   validation {
#     condition     = var.default_node_pool_kubelet_config_image_gc_high_threshold == null || can(var.default_node_pool_kubelet_config_image_gc_high_threshold >= 0 && var.default_node_pool_kubelet_config_image_gc_high_threshold <= 100)
#     error_message = "Must be between 0 and 100."
#   }
# }

# variable "default_node_pool_kubelet_config_image_gc_low_threshold" {
#   description = "Specifies the percent of disk usage lower than which image garbage collection is never run."
#   type        = number
#   default     = null

#   validation {
#     condition     = var.default_node_pool_kubelet_config_image_gc_low_threshold == null || can(var.default_node_pool_kubelet_config_image_gc_low_threshold >= 0 && var.default_node_pool_kubelet_config_image_gc_low_threshold <= 100)
#     error_message = "Must be between 0 and 100."
#   }
# }

# variable "default_node_pool_kubelet_config_pod_max_pid" {
#   description = "Specifies the maximum number of processes per pod."
#   type        = string
#   default     = null
# }

# variable "default_node_pool_kubelet_config_topology_manager_policy" {
#   description = "Specifies the Topology Manager policy to use."
#   type        = string
#   default     = null

#   validation {
#     condition     = var.default_node_pool_kubelet_config_topology_manager_policy == null || can(regex("^(none|best-effort|restricted|single-numa-node)$", var.default_node_pool_kubelet_config_topology_manager_policy))
#     error_message = "Possible values are none, best-effort, restricted or single-numa-node."
#   }
# }

# variable "default_node_pool_linux_os_config_block_enabled" {
#   description = "Should the Linux OS Config Block be enabled?"
#   type        = bool
#   default     = false
# }

# variable "default_node_pool_linux_os_config_swap_file_size_mb" {
#   description = "Specifies the size of swap file on each node in MB."
#   type        = string
#   default     = null
# }

# variable "default_node_pool_linux_os_config_sysctl_config_block_enabled" {
#   description = "Should the Sysctl Block be enabled?"
#   type        = bool
#   default     = false
# }

# variable "default_node_pool_linux_os_config_sysctl_config_fs_aio_max_nr" {
#   description = "The sysctl setting fs.aio-max-nr."
#   type        = number
#   default     = null

#   validation {
#     condition     = var.default_node_pool_linux_os_config_sysctl_config_fs_aio_max_nr == null || can(var.default_node_pool_linux_os_config_sysctl_config_fs_aio_max_nr >= 65536 && var.default_node_pool_linux_os_config_sysctl_config_fs_aio_max_nr <= 6553500)
#     error_message = "Must be between 65536 and 6553500."
#   }
# }

# variable "default_node_pool_linux_os_config_sysctl_config_fs_file_max" {
#   description = "The sysctl setting fs.file-max."
#   type        = number
#   default     = null

#   validation {
#     condition     = var.default_node_pool_linux_os_config_sysctl_config_fs_file_max == null || can(var.default_node_pool_linux_os_config_sysctl_config_fs_file_max >= 8192 && var.default_node_pool_linux_os_config_sysctl_config_fs_file_max <= 12000500)
#     error_message = "Must be between 8192 and 12000500."
#   }
# }

# variable "default_node_pool_linux_os_config_sysctl_config_fs_inotify_max_user_watches" {
#   description = "The sysctl setting fs.inotify.max_user_watches."
#   type        = number
#   default     = null

#   validation {
#     condition     = var.default_node_pool_linux_os_config_sysctl_config_fs_inotify_max_user_watches == null || can(var.default_node_pool_linux_os_config_sysctl_config_fs_inotify_max_user_watches >= 781250 && var.default_node_pool_linux_os_config_sysctl_config_fs_inotify_max_user_watches <= 2097152)
#     error_message = "Must be between 781250 and 2097152."
#   }
# }

# variable "default_node_pool_linux_os_config_sysctl_config_fs_nr_open" {
#   description = "The sysctl setting fs.nr_open."
#   type        = number
#   default     = null

#   validation {
#     condition     = var.default_node_pool_linux_os_config_sysctl_config_fs_nr_open == null || can(var.default_node_pool_linux_os_config_sysctl_config_fs_nr_open >= 8192 && var.default_node_pool_linux_os_config_sysctl_config_fs_nr_open <= 20000500)
#     error_message = "Must be between 8192 and 20000500."
#   }
# }

# variable "default_node_pool_linux_os_config_sysctl_config_kernel_threads_max" {
#   description = "The sysctl setting kernel.threads-max."
#   type        = number
#   default     = null

#   validation {
#     condition     = var.default_node_pool_linux_os_config_sysctl_config_kernel_threads_max == null || can(var.default_node_pool_linux_os_config_sysctl_config_kernel_threads_max >= 20 && var.default_node_pool_linux_os_config_sysctl_config_kernel_threads_max <= 513785)
#     error_message = "Must be between 20 and 513785."
#   }
# }

# variable "default_node_pool_linux_os_config_sysctl_config_net_core_netdev_max_backlog" {
#   description = "The sysctl setting net.core.netdev_max_backlog."
#   type        = number
#   default     = null

#   validation {
#     condition     = var.default_node_pool_linux_os_config_sysctl_config_net_core_netdev_max_backlog == null || can(var.default_node_pool_linux_os_config_sysctl_config_net_core_netdev_max_backlog >= 1000 && var.default_node_pool_linux_os_config_sysctl_config_net_core_netdev_max_backlog <= 3240000)
#     error_message = "Must be between 1000 and 3240000."
#   }
# }

# variable "default_node_pool_linux_os_config_sysctl_config_net_core_optmem_max" {
#   description = "The sysctl setting net.core.optmem_max."
#   type        = number
#   default     = null

#   validation {
#     condition     = var.default_node_pool_linux_os_config_sysctl_config_net_core_optmem_max == null || can(var.default_node_pool_linux_os_config_sysctl_config_net_core_optmem_max >= 20480 && var.default_node_pool_linux_os_config_sysctl_config_net_core_optmem_max <= 4194304)
#     error_message = "Must be between 20480 and 4194304."
#   }
# }

# variable "default_node_pool_linux_os_config_sysctl_config_net_core_rmem_default" {
#   description = "The sysctl setting net.core.rmem_default."
#   type        = number
#   default     = null

#   validation {
#     condition     = var.default_node_pool_linux_os_config_sysctl_config_net_core_rmem_default == null || can(var.default_node_pool_linux_os_config_sysctl_config_net_core_rmem_default >= 212992 && var.default_node_pool_linux_os_config_sysctl_config_net_core_rmem_default <= 134217728)
#     error_message = "Must be between 212992 and 134217728."
#   }
# }

# variable "default_node_pool_linux_os_config_sysctl_config_net_core_rmem_max" {
#   description = "The sysctl setting net.core.rmem_max."
#   type        = number
#   default     = null

#   validation {
#     condition     = var.default_node_pool_linux_os_config_sysctl_config_net_core_rmem_max == null || can(var.default_node_pool_linux_os_config_sysctl_config_net_core_rmem_max >= 212992 && var.default_node_pool_linux_os_config_sysctl_config_net_core_rmem_max <= 134217728)
#     error_message = "Must be between 212992 and 134217728."
#   }
# }

# variable "default_node_pool_linux_os_config_sysctl_config_net_core_somaxconn" {
#   description = "The sysctl setting net.core.somaxconn."
#   type        = number
#   default     = null

#   validation {
#     condition     = var.default_node_pool_linux_os_config_sysctl_config_net_core_somaxconn == null || can(var.default_node_pool_linux_os_config_sysctl_config_net_core_somaxconn >= 4096 && var.default_node_pool_linux_os_config_sysctl_config_net_core_somaxconn <= 3240000)
#     error_message = "Must be between 4096 and 3240000."
#   }
# }

# variable "default_node_pool_linux_os_config_sysctl_config_net_core_wmem_default" {
#   description = "The sysctl setting net.core.wmem_default."
#   type        = number
#   default     = null

#   validation {
#     condition     = var.default_node_pool_linux_os_config_sysctl_config_net_core_wmem_default == null || can(var.default_node_pool_linux_os_config_sysctl_config_net_core_wmem_default >= 212992 && var.default_node_pool_linux_os_config_sysctl_config_net_core_wmem_default <= 134217728)
#     error_message = "Must be between 212992 and 134217728."
#   }
# }

# variable "default_node_pool_linux_os_config_sysctl_config_net_core_wmem_max" {
#   description = "The sysctl setting net.core.wmem_max."
#   type        = number
#   default     = null

#   validation {
#     condition     = var.default_node_pool_linux_os_config_sysctl_config_net_core_wmem_max == null || can(var.default_node_pool_linux_os_config_sysctl_config_net_core_wmem_max >= 212992 && var.default_node_pool_linux_os_config_sysctl_config_net_core_wmem_max <= 134217728)
#     error_message = "Must be between 212992 and 134217728."
#   }
# }

# variable "default_node_pool_linux_os_config_sysctl_config_net_ipv4_ip_local_port_range_max" {
#   description = "The sysctl setting net.ipv4.ip_local_port_range max value."
#   type        = number
#   default     = null

#   validation {
#     condition     = var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_ip_local_port_range_max == null || can(var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_ip_local_port_range_max >= 1024 && var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_ip_local_port_range_max <= 60999)
#     error_message = "Must be between 1024 and 60999."
#   }
# }

# variable "default_node_pool_linux_os_config_sysctl_config_net_ipv4_ip_local_port_range_min" {
#   description = "The sysctl setting net.ipv4.ip_local_port_range min value."
#   type        = number
#   default     = null

#   validation {
#     condition     = var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_ip_local_port_range_min == null || can(var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_ip_local_port_range_min >= 1024 && var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_ip_local_port_range_min <= 60999)
#     error_message = "Must be between 1024 and 60999."
#   }
# }

# variable "default_node_pool_linux_os_config_sysctl_config_net_ipv4_neigh_default_gc_thresh1" {
#   description = "The sysctl setting net.ipv4.neigh.default.gc_thresh1."
#   type        = number
#   default     = null

#   validation {
#     condition     = var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_neigh_default_gc_thresh1 == null || can(var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_neigh_default_gc_thresh1 >= 128 && var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_neigh_default_gc_thresh1 <= 80000)
#     error_message = "Must be between 128 and 80000."
#   }
# }

# variable "default_node_pool_linux_os_config_sysctl_config_net_ipv4_neigh_default_gc_thresh2" {
#   description = "The sysctl setting net.ipv4.neigh.default.gc_thresh2."
#   type        = number
#   default     = null

#   validation {
#     condition     = var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_neigh_default_gc_thresh2 == null || can(var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_neigh_default_gc_thresh2 >= 512 && var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_neigh_default_gc_thresh2 <= 90000)
#     error_message = "Must be between 512 and 90000."
#   }
# }

# variable "default_node_pool_linux_os_config_sysctl_config_net_ipv4_neigh_default_gc_thresh3" {
#   description = "The sysctl setting net.ipv4.neigh.default.gc_thresh3."
#   type        = number
#   default     = null

#   validation {
#     condition     = var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_neigh_default_gc_thresh3 == null || can(var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_neigh_default_gc_thresh3 >= 1024 && var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_neigh_default_gc_thresh3 <= 100000)
#     error_message = "Must be between 1024 and 100000."
#   }
# }

# variable "default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_fin_timeout" {
#   description = "The sysctl setting net.ipv4.tcp_fin_timeout."
#   type        = number
#   default     = null

#   validation {
#     condition     = var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_fin_timeout == null || can(var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_fin_timeout >= 5 && var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_fin_timeout <= 120)
#     error_message = "Must be between 5 and 120."
#   }
# }

# variable "default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_keepalive_intvl" {
#   description = "The sysctl setting net.ipv4.tcp_keepalive_intvl."
#   type        = number
#   default     = null

#   validation {
#     condition     = var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_keepalive_intvl == null || can(var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_keepalive_intvl >= 10 && var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_keepalive_intvl <= 75)
#     error_message = "Must be between 10 and 75."
#   }
# }

# variable "default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_keepalive_time" {
#   description = "The sysctl setting net.ipv4.tcp_keepalive_time."
#   type        = number
#   default     = null

#   validation {
#     condition     = var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_keepalive_time == null || can(var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_keepalive_time >= 30 && var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_keepalive_time <= 432000)
#     error_message = "Must be between 30 and 432000."
#   }
# }

# variable "default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_keepalive_probes" {
#   description = "The sysctl setting net.ipv4.tcp_keepalive_probes."
#   type        = number
#   default     = null

#   validation {
#     condition     = var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_keepalive_probes == null || can(var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_keepalive_probes >= 1 && var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_keepalive_probes <= 15)
#     error_message = "Must be between 1 and 15."
#   }
# }

# variable "default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_max_syn_backlog" {
#   description = "The sysctl setting net.ipv4.tcp_max_syn_backlog."
#   type        = number
#   default     = null

#   validation {
#     condition     = var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_max_syn_backlog == null || can(var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_max_syn_backlog >= 128 && var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_max_syn_backlog <= 3240000)
#     error_message = "Must be between 128 and 3240000."
#   }
# }

# variable "default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_max_tw_buckets" {
#   description = "The sysctl setting net.ipv4.tcp_max_tw_buckets."
#   type        = number
#   default     = null

#   validation {
#     condition     = var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_max_tw_buckets == null || can(var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_max_tw_buckets >= 8000 && var.default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_max_tw_buckets <= 1440000)
#     error_message = "Must be between 8000 and 1440000."
#   }
# }

# variable "default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_tw_reuse" {
#   description = "The sysctl setting net.ipv4.tcp_tw_reuse."
#   type        = string
#   default     = null
# }

# variable "default_node_pool_linux_os_config_sysctl_config_net_netfilter_nf_conntrack_buckets" {
#   description = "The sysctl setting net.netfilter.nf_conntrack_buckets."
#   type        = number
#   default     = null

#   validation {
#     condition     = var.default_node_pool_linux_os_config_sysctl_config_net_netfilter_nf_conntrack_buckets == null || can(var.default_node_pool_linux_os_config_sysctl_config_net_netfilter_nf_conntrack_buckets >= 65536 && var.default_node_pool_linux_os_config_sysctl_config_net_netfilter_nf_conntrack_buckets <= 147456)
#     error_message = "Must be between 65536 and 147456."
#   }
# }

# variable "default_node_pool_linux_os_config_sysctl_config_net_netfilter_nf_conntrack_max" {
#   description = "The sysctl setting net.netfilter.nf_conntrack_max."
#   type        = number
#   default     = null

#   validation {
#     condition     = var.default_node_pool_linux_os_config_sysctl_config_net_netfilter_nf_conntrack_max == null || can(var.default_node_pool_linux_os_config_sysctl_config_net_netfilter_nf_conntrack_max >= 131072 && var.default_node_pool_linux_os_config_sysctl_config_net_netfilter_nf_conntrack_max <= 589824)
#     error_message = "Must be between 131072 and 589824."
#   }
# }

# variable "default_node_pool_linux_os_config_sysctl_config_vm_max_map_count" {
#   description = "The sysctl setting vm.max_map_count."
#   type        = number
#   default     = null

#   validation {
#     condition     = var.default_node_pool_linux_os_config_sysctl_config_vm_max_map_count == null || can(var.default_node_pool_linux_os_config_sysctl_config_vm_max_map_count >= 65530 && var.default_node_pool_linux_os_config_sysctl_config_vm_max_map_count <= 262144)
#     error_message = "Must be between 65530 and 262144."
#   }
# }

# variable "default_node_pool_linux_os_config_sysctl_config_vm_swappiness" {
#   description = "The sysctl setting vm.swappiness."
#   type        = number
#   default     = null

#   validation {
#     condition     = var.default_node_pool_linux_os_config_sysctl_config_vm_swappiness == null || can(var.default_node_pool_linux_os_config_sysctl_config_vm_swappiness >= 0 && var.default_node_pool_linux_os_config_sysctl_config_vm_swappiness <= 100)
#     error_message = "Must be between 0 and 100."
#   }
# }

# variable "default_node_pool_linux_os_config_sysctl_config_vm_vfs_cache_pressure" {
#   description = "The sysctl setting vm.vfs_cache_pressure."
#   type        = number
#   default     = null

#   validation {
#     condition     = var.default_node_pool_linux_os_config_sysctl_config_vm_vfs_cache_pressure == null || can(var.default_node_pool_linux_os_config_sysctl_config_vm_vfs_cache_pressure >= 0 && var.default_node_pool_linux_os_config_sysctl_config_vm_vfs_cache_pressure <= 100)
#     error_message = "Must be between 0 and 100."
#   }
# }

# variable "default_node_pool_linux_os_config_transparent_huge_page_defrag" {
#   description = "Specifies the defrag configuration for Transparent Huge Page."
#   type        = string
#   default     = null

#   validation {
#     condition     = var.default_node_pool_linux_os_config_transparent_huge_page_defrag == null || can(regex("^(always|defer|defer+madvise|madvise|never)$", var.default_node_pool_linux_os_config_transparent_huge_page_defrag))
#     error_message = "Possible values are always, defer, defer+madvise, madvise and never."
#   }
# }

# variable "default_node_pool_linux_os_config_transparent_huge_page_enabled" {
#   description = "Specifies the Transparent Huge Page enabled configuration."
#   type        = string
#   default     = null

#   validation {
#     condition     = var.default_node_pool_linux_os_config_transparent_huge_page_enabled == null || can(regex("^(always|madvise|never)$", var.default_node_pool_linux_os_config_transparent_huge_page_enabled))
#     error_message = "Possible values are always, madvise and never."
#   }
# }

# variable "default_node_pool_fips_enabled" {
#   description = "Should the nodes in this Node Pool have Federal Information Processing Standard enabled?"
#   type        = bool
#   default     = null
# }

# variable "default_node_pool_kubelet_disk_type" {
#   description = "The type of disk used by kubelet."
#   type        = string
#   default     = null

#   validation {
#     condition     = var.default_node_pool_kubelet_disk_type == null || can(regex("^OS$", var.default_node_pool_kubelet_disk_type))
#     error_message = "At this time the only possible value is OS."
#   }
# }

# variable "default_node_pool_max_pods" {
#   description = "The maximum number of pods that can run on each agent."
#   type        = string
#   default     = null
# }

# variable "default_node_pool_node_public_ip_prefix_id" {
#   description = "Resource ID for the Public IP Addresses Prefix for the nodes in this Node Pool. enable_node_public_ip should be true."
#   type        = string
#   default     = null
# }

# variable "default_node_pool_node_labels" {
#   description = "A map of Kubernetes labels which should be applied to nodes in the Default Node Pool."
#   type        = map(string)
#   default = {
#     terraform = "true"
#   }
# }

# variable "default_node_pool_only_critical_addons_enabled" {
#   description = "Enabling this option will taint default node pool with CriticalAddonsOnly=true:NoSchedule taint."
#   type        = bool
#   default     = null
# }

# variable "default_node_pool_orchestrator_version" {
#   description = "Version of Kubernetes used for the Agents."
#   type        = string
#   default     = null
# }

# variable "default_node_pool_os_disk_size_gb" {
#   description = "The size of the OS Disk which should be used for each agent in the Node Pool."
#   type        = string
#   default     = null
# }

# variable "default_node_pool_os_disk_type" {
#   description = "The type of disk which should be used for the Operating System."
#   type        = string
#   default     = "Managed"

#   validation {
#     condition     = can(regex("^(Ephemeral|Managed)$", var.default_node_pool_os_disk_type))
#     error_message = "Possible values are Ephemeral and Managed."
#   }
# }

# variable "default_node_pool_os_sku" {
#   description = "OsSKU to be used to specify Linux OSType. Not applicable to Windows OSType. "
#   type        = string
#   default     = "Ubuntu"

#   validation {
#     condition     = can(regex("^(Ubuntu|CBLMariner)$", var.default_node_pool_os_sku))
#     error_message = "Possible values include: Ubuntu, CBLMariner."
#   }
# }

# variable "default_node_pool_pod_subnet_id" {
#   description = "The ID of the Subnet where the pods in the default Node Pool should exist."
#   type        = string
#   default     = null
# }

# variable "default_node_pool_type" {
#   description = "The type of Node Pool which should be created."
#   type        = string
#   default     = "VirtualMachineScaleSets"

#   validation {
#     condition     = can(regex("^(AvailabilitySet|VirtualMachineScaleSets)$", var.default_node_pool_type))
#     error_message = "Possible values are AvailabilitySet and VirtualMachineScaleSets."
#   }
# }

# variable "default_node_pool_tags" {
#   description = "A mapping of tags to assign to the Node Pool."
#   type        = map(string)
#   default = {
#     terraform = "true"
#   }
# }

# variable "default_node_pool_ultra_ssd_enabled" {
#   description = "Used to specify whether the UltraSSD is enabled in the Default Node Pool."
#   type        = bool
#   default     = false
# }

# variable "default_node_pool_upgrade_settings_block_enabled" {
#   description = "Should the Upgrade Settings Block be enabled?"
#   type        = bool
#   default     = false
# }

# variable "default_node_pool_upgrade_settings_max_surge" {
#   description = "The maximum number or percentage of nodes which will be added to the Node Pool size during an upgrade."
#   type        = string
#   default     = null
# }

# variable "default_node_pool_vnet_subnet_id" {
#   description = "The ID of a Subnet where the Kubernetes Node Pool should exist. A Route Table must be configured on this Subnet."
#   type        = string
#   default     = null
# }

# variable "default_node_pool_node_count" {
#   description = "The initial number of nodes which should exist in this Node Pool."
#   type        = number
#   default     = null

#   validation {
#     condition     = can(var.default_node_pool_node_count >= 1 && var.default_node_pool_node_count <= 1000)
#     error_message = "If specified this must be between 1 and 1000."
#   }
# }

# variable "default_node_pool_max_count" {
#   description = "The maximum number of nodes which should exist in this Node Pool."
#   type        = number
#   default     = null

#   validation {
#     condition     = can(var.default_node_pool_max_count >= 1 && var.default_node_pool_max_count <= 1000)
#     error_message = "If specified this must be between 1 and 1000."
#   }
# }

# variable "default_node_pool_min_count" {
#   description = "The minimum number of nodes which should exist in this Node Pool."
#   type        = number
#   default     = null

#   validation {
#     condition     = can(var.default_node_pool_min_count >= 1 && var.default_node_pool_min_count <= 1000)
#     error_message = "If specified this must be between 1 and 1000."
#   }
# }
