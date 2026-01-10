---
creation_date: 2024-12-23
modification_date: 2024-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Curated list of DevOps tools for CI/CD, containers, infrastructure as code, and automation
tags:
  - Status/Ongoing
  - Type/List
  - Topic/DevOps
  - Topic/Cloud
aliases:
  - DevOps Tools
  - CI/CD Tools
  - Infrastructure Tools
publish: true
---

# List - DevOps Tools
## Overview

Curated collection of **DevOps tools** for continuous integration, container orchestration, infrastructure as code, and automation.

## Containerization

| Tool | Description | Links |
|------|-------------|-------|
| Docker | Container platform for packaging applications | [Site](https://www.docker.com/) - [Docs](https://docs.docker.com/) |
| Docker Compose | Multi-container application orchestration | [Docs](https://docs.docker.com/compose/) |
| Podman | Daemonless container engine (Docker alternative) | [Site](https://podman.io/) - [Docs](https://docs.podman.io/) |
| containerd | Industry-standard container runtime | [Site](https://containerd.io/) |

## Container Orchestration

| Tool | Description | Links |
|------|-------------|-------|
| Kubernetes (K8s) | Container orchestration at scale | [Site](https://kubernetes.io/) - [Docs](https://kubernetes.io/docs/) |
| k3s | Lightweight Kubernetes for edge/IoT | [Site](https://k3s.io/) |
| Docker Swarm | Native Docker clustering | [Docs](https://docs.docker.com/engine/swarm/) |
| Nomad | HashiCorp workload orchestrator | [Site](https://www.nomadproject.io/) |

## CI/CD Platforms

| Platform | Description | Links |
|----------|-------------|-------|
| GitHub Actions | Native GitHub CI/CD, excellent integration | [Docs](https://docs.github.com/actions) |
| GitLab CI | Built-in CI/CD for GitLab | [Docs](https://docs.gitlab.com/ee/ci/) |
| CircleCI | Cloud-native CI/CD | [Site](https://circleci.com/) - [Docs](https://circleci.com/docs/) |
| Jenkins | Self-hosted, extensible CI server | [Site](https://www.jenkins.io/) |
| Azure DevOps | Microsoft's DevOps platform | [Site](https://azure.microsoft.com/products/devops/) |
| Buildkite | Hybrid CI/CD (agents on your infra) | [Site](https://buildkite.com/) |

## Infrastructure as Code

| Tool | Description | Links |
|------|-------------|-------|
| Terraform | Multi-cloud IaC by HashiCorp | [Site](https://www.terraform.io/) - [Docs](https://developer.hashicorp.com/terraform/docs) |
| OpenTofu | Open-source Terraform fork | [Site](https://opentofu.org/) |
| Pulumi | IaC with real programming languages | [Site](https://www.pulumi.com/) - [Docs](https://www.pulumi.com/docs/) |
| AWS CloudFormation | AWS-native IaC | [Docs](https://docs.aws.amazon.com/cloudformation/) |
| Ansible | Agentless configuration management | [Site](https://www.ansible.com/) - [Docs](https://docs.ansible.com/) |
| Packer | Machine image builder | [Site](https://www.packer.io/) |

## Secret Management

| Tool | Description | Links |
|------|-------------|-------|
| HashiCorp Vault | Secret management and encryption | [Site](https://www.vaultproject.io/) - [Docs](https://developer.hashicorp.com/vault/docs) |
| AWS Secrets Manager | AWS-native secrets | [Docs](https://docs.aws.amazon.com/secretsmanager/) |
| Azure Key Vault | Azure secret management | [Docs](https://learn.microsoft.com/azure/key-vault/) |
| Infisical | Open-source secret management | [Site](https://infisical.com/) - [Docs](https://infisical.com/docs/) |
| 1Password Secrets Automation | Secrets from 1Password | [Docs](https://developer.1password.com/docs/secrets-automation/) |

## Monitoring & Observability

| Tool | Description | Links |
|------|-------------|-------|
| Prometheus | Time series monitoring and alerting | [Site](https://prometheus.io/) - [Docs](https://prometheus.io/docs/) |
| Grafana | Visualization and dashboards | [Site](https://grafana.com/) - [Docs](https://grafana.com/docs/) |
| Datadog | Cloud monitoring platform | [Site](https://www.datadoghq.com/) |
| OpenTelemetry | Observability framework (traces, metrics, logs) | [Site](https://opentelemetry.io/) |
| Sentry | Error tracking and performance | [Site](https://sentry.io/) - [Docs](https://docs.sentry.io/) |

## Log Management

| Tool | Description | Links |
|------|-------------|-------|
| Loki | Log aggregation by Grafana | [Site](https://grafana.com/oss/loki/) |
| Elasticsearch + Kibana | Search-based log analysis | [Site](https://www.elastic.co/) |
| Papertrail | Cloud-hosted log management | [Site](https://www.papertrail.com/) |

## Service Mesh & Networking

| Tool | Description | Links |
|------|-------------|-------|
| Nginx | Web server and reverse proxy | [Site](https://nginx.org/) - [Docs](https://nginx.org/en/docs/) |
| Traefik | Cloud-native edge router | [Site](https://traefik.io/) - [Docs](https://doc.traefik.io/traefik/) |
| Caddy | Automatic HTTPS web server | [Site](https://caddyserver.com/) - [Docs](https://caddyserver.com/docs/) |
| Istio | Kubernetes service mesh | [Site](https://istio.io/) |
| Linkerd | Lightweight service mesh | [Site](https://linkerd.io/) |

## Container Registries

| Registry | Description | Links |
|----------|-------------|-------|
| Docker Hub | Default public registry | [Site](https://hub.docker.com/) |
| GitHub Container Registry | GitHub-integrated GHCR | [Docs](https://docs.github.com/packages/working-with-a-github-packages-registry/working-with-the-container-registry) |
| Amazon ECR | AWS container registry | [Docs](https://docs.aws.amazon.com/ecr/) |
| Azure Container Registry | Azure ACR | [Docs](https://learn.microsoft.com/azure/container-registry/) |
| Google Artifact Registry | GCP container/artifact registry | [Docs](https://cloud.google.com/artifact-registry/docs) |

## Local Development

| Tool | Description | Links |
|------|-------------|-------|
| DevContainers | VS Code containerized development | [Docs](https://containers.dev/) |
| Tilt | Local Kubernetes development | [Site](https://tilt.dev/) |
| Skaffold | Local Kubernetes dev by Google | [Site](https://skaffold.dev/) |
| k9s | Terminal UI for Kubernetes | [Site](https://k9scli.io/) |
| Lens | Kubernetes IDE | [Site](https://k8slens.dev/) |

## Tunneling & Development

| Tool | Description | Links |
|------|-------------|-------|
| ngrok | Secure tunnels to localhost | [Site](https://ngrok.com/) - [Docs](https://ngrok.com/docs) |
| Cloudflare Tunnel | Zero-trust tunnel | [Docs](https://developers.cloudflare.com/cloudflare-one/connections/connect-networks/) |
| localtunnel | Open source ngrok alternative | [Site](https://theboroer.github.io/localtunnel-www/) |

---

## See Also

- [List - Cloud Platforms](List - Cloud Platforms.md)
- [List - Command Line Tools](List - Command Line Tools.md)
- [MOC - DevOps](MOC - DevOps.md)

---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024





