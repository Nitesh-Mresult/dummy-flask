# terraform.tfvars

subscription_id     = "7532a935-5f60-4226-b24a-402e4ba6a990" # Replace with your actual subscription ID
resource_group_name = "POC_test"
location           = "AustraliaEast"
acr_name           = "NiteshContainers"  # Replace with your actual ACR name
aks_cluster_name   = "flask-app-cluster"
node_pool_size     = 3
node_pool_vm_size  = "Standard_DS2_v2"
dns_prefix         = "flask-app-dns"
docker_image_tag   = "latest"
storage_account_name = "terraformstate1910"
container_name     = "tfstatestorage"
