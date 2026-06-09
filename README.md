# DevOps Monitoring Project

A full-stack DevOps project combining Docker, Terraform, GitHub Actions CI/CD, and Grafana Cloud monitoring.

## 🛠️ Tech Stack
- **Docker** — Containerized web application using Nginx
- **Terraform** — AWS infrastructure provisioning (S3 + CloudWatch)
- **GitHub Actions** — CI/CD pipeline for automated builds
- **Grafana Cloud** — Monitoring and observability dashboards

## 📁 Project Structure
devops-monitoring-project/
├── Dockerfile
├── index.html
├── README.md

## 🚀 How to Run Locally
```bash
# Build Docker image
docker build -t devops-web-app .

# Run container
docker run -d -p 8080:80 --name devops-app devops-web-app

# Access app
http://localhost:8080
```

## 📌 Project Stages
- [x] Stage 1 — Dockerize web app
- [ ] Stage 2 — Terraform AWS infrastructure
- [ ] Stage 3 — GitHub Actions CI/CD
- [ ] Stage 4 — Grafana Cloud monitoring