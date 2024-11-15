# Values for Azure and Terraform Backend Configuration

subscription_id = "your-azure-subscription-id"
resource_group_name = "POC_test"
location = "East US"
storage_account_name = "your-storage-account-name"
container_name = "tfstate"
tfstate_key = "terraform.tfstate"

# Azure Container Registry and Kubernetes Configuration
acr_name = "niteshcontainers"
aks_cluster_name = "flask-app-cluster"
node_pool_size = 2
node_pool_vm_size = "Standard_DS2_v2"
dns_prefix = "flask-app-dns"

# Set the image tag for the Docker image based on Git commit SHA or use a static tag
docker_image_tag = "latest"  # Replace with `${github.sha}` for dynamic values in CI/CD
