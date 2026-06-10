# DevOps Monitoring Project

A full-stack DevOps project combining Docker, Terraform, GitHub Actions CI/CD, and Grafana Cloud monitoring.

## 🛠️ Tech Stack
- **Docker** — Containerized web application using Nginx
- **Terraform** — AWS infrastructure provisioning (S3 bucket)
- **GitHub Actions** — CI/CD pipeline for automated Docker builds
- **Grafana Cloud** — Real-time monitoring and observability dashboards
- **Prometheus** — Metrics collection and remote write to Grafana Cloud
- **Node Exporter** — System metrics (CPU, memory) collection

## 📁 Project Structure
```
devops-monitoring-project/
├── .github/
│   └── workflows/
│       └── deploy.yml
├── Dockerfile
├── docker-compose.yml
├── main.tf
├── index.html
└── README.md
```

## 🚀 How to Run Locally

### Run the Web App
```bash
# Build Docker image
docker build -t devops-web-app .

# Run container
docker run -d -p 8080:80 --name devops-app devops-web-app

# Access app
http://localhost:8080
```

### Run Monitoring Stack
```bash
# Start Prometheus + Node Exporter
docker-compose up -d

# Stop monitoring stack
docker-compose down
```

### Provision AWS Infrastructure
```bash
# Initialize Terraform
terraform init

# Preview changes
terraform plan

# Apply changes
terraform apply

# Destroy infrastructure
terraform destroy
```

## ⚙️ CI/CD Pipeline
Every push to the `main` branch automatically:
1. Checks out the code
2. Logs into Docker Hub
3. Builds the Docker image
4. Pushes the image to Docker Hub

## 📊 Grafana Monitoring Dashboard
- **Go Goroutines** — monitors runtime goroutines
- **CPU Usage** — real-time CPU metrics via Node Exporter

## 📌 Project Stages
- [x] Stage 1 — Dockerize web app
- [x] Stage 2 — Terraform AWS infrastructure
- [x] Stage 3 — GitHub Actions CI/CD
- [x] Stage 4 — Grafana Cloud monitoring