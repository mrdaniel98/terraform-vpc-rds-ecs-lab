# Terraform + Kubernetes WebApp Deployment Lab

This project automates the provisioning of a multi-tier infrastructure using **Terraform** and **Kubernetes (KIND)** to deploy a containerized web application with a MySQL backend.

---

##  Key Technologies
- **Terraform**: Infrastructure provisioning (VPC, EC2, Security Groups)
- **Kubernetes (KIND)**: Orchestration of web app and MySQL containers
- **MySQL**: Backend database
- **GitHub Actions**: Optional CI/CD automation included

---

## Project Structure
```
.
├── terraform_code/         # AWS Infrastructure as Code
├── kindcode/
│   ├── Yamlfiles/          # Kubernetes manifests (Pods, Services, etc.)
│   └── terraform_code/     # KIND-specific Terraform logic
```

---

## Kubernetes Manifests
-  Deployments, Pods, ReplicaSets
-  Services for MySQL and WebApp
-  Namespaces, RBAC (role/rolebinding)

---

## Setup Instructions

### 1. Clone the Repo
```bash
git clone https://github.com/mrdaniel98/terraform-vpc-rds-ecs-lab.git
cd terraform-vpc-rds-ecs-lab
```

### 2. Provision AWS Infrastructure with Terraform
```bash
cd terraform_code
terraform init
terraform apply
```

### 3. Deploy on Kubernetes (using KIND)
Ensure Docker is running:
```bash
cd kindcode/Yamlfiles
bash init_kind.sh
kubectl apply -f namespace.yaml
kubectl apply -f mysql-deployment.yaml
kubectl apply -f webapp-deployment.yaml
```

---

## 🎯 Highlights
- Deploys real AWS resources using IaC
- Uses Kubernetes to manage microservices (web app + MySQL)
- Demonstrates DevOps skills across cloud + containers
- Great for interviews, labs, or home labs

---

## 👨🏽‍💻 Author

**Oyetade Olayinka**  
Cloud & DevOps Enthusiast  
[GitHub](https://github.com/mrdaniel98) • [LinkedIn](https://www.linkedin.com/in/oyetade-olayinka-0120171a2/)

---

