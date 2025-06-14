# Terraform + Kubernetes WebApp Deployment Lab

This project automates the provisioning of a multi-tier infrastructure using **Terraform** and **Kubernetes (KIND)** to deploy a containerized web application with a MySQL backend.

## 🚀 Key Technologies
- **Terraform**: Infrastructure provisioning (VPC, EC2, Security Groups)
- **Kubernetes**: Service orchestration and deployment via manifests
- **MySQL**: Backend database service
- **GitHub Actions**: For workflow automation (optional setup included)

## 🧱 Project Structure

.
├── terraform_code/ # AWS Infrastructure as Code (EC2, SGs, VPC)
├── kindcode/
│ ├── Yamlfiles/ # Kubernetes manifests (webapp + MySQL)
│ └── terraform_code/ # Additional Terraform setup for KIND

markdown
Copy
Edit

## 📦 Kubernetes Manifests
Includes:
- Deployments and Pods for `webapp` and `mysql`
- Services (ClusterIP/NodePort)
- ReplicaSets, Namespaces, and Role Bindings

## 🛠️ Setup Guide

### 1. Clone the Repo
git clone https://github.com/mrdaniel98/terraform-vpc-rds-ecs-lab.git
cd terraform-vpc-rds-ecs-lab

2. Provision Infra with Terraform
cd terraform_code
terraform init
terraform apply

4. Deploy to Kubernetes (Kind)
cd kindcode/Yamlfiles
bash init_kind.sh
kubectl apply -f namespace.yaml
kubectl apply -f mysql-deployment.yaml
kubectl apply -f webapp-deployment.yaml
Note: Ensure Docker is running locally before launching KIND.

✅ Highlights
Launches infrastructure using code, not clicks

Demonstrates real-world IaC and container deployment workflow

Uses clean directory separation for Terraform vs K8s logic

Hands-on learning project for cloud DevOps interviews

🔗 Author
Oyetade Olayinka
GitHub Profile | LinkedIn
