# terraform.tfvars

subscription_id = "7532a935-5f60-4226-b24a-402e4ba6a990"  # Override with actual subscription ID if needed
resource_group_name = "POC_test"   # Override if the resource group changes
location = "australiaeast"         # Override if the location changes
acr_name = "NiteshContainers"      # Override with your Container Registry name
aks_cluster_name = "flask-app"     # Override with your AKS cluster name
dns_prefix = "flask-app-dns"       # Override with your DNS prefix
node_pool_name = "agentpool"       # Override if the node pool name changes
vm_size = "Standard_D8ds_v5"       # Override with the VM size you want
node_count = 2                     # Override if the node count changes
admin_enabled = true               # Override if admin access changes
