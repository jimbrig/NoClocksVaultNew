---
creation_date: 2025-12-23
modification_date: 2025-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/Bash
  - Topic/Docker
  - Status/Complete
aliases:
  - Install Docker Compose
  - Docker Installation Script
publish: true
permalink:
description: "Bash script for installing Docker and Docker Compose on Ubuntu/Debian."
cssclasses:
  - code
---

# Install Docker Compose

```table-of-contents
title: ## Contents 
style: nestedList
minLevel: 1
maxLevel: 4
includeLinks: true
```

## Overview

> [!SOURCE] Sources:
> - *[Install Docker Engine on Ubuntu | Docker Docs](https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository)*
> - *[get.docker.com](https://get.docker.com/)*

Script for installing Docker Engine and Docker Compose plugin on Ubuntu/Debian systems.

## Code

### Official Repository Method

```bash
#!/usr/bin/env bash

# update apt and install dependencies
sudo apt-get update
sudo apt-get install -y ca-certificates curl

# setup keyrings directory
sudo install -m 0755 -d /etc/apt/keyrings

# add docker official gpg key
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# add repository to apt sources
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# update apt with new repository
sudo apt-get update

# install docker packages
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# verify installation
sudo docker --version
docker compose version
```

### Quick Install (Convenience Script)

```bash
# download and run the convenience script
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```

### Post-Installation Steps

```bash
# add current user to docker group (to run without sudo)
sudo usermod -aG docker $USER

# apply new group membership
newgrp docker

# verify docker runs without sudo
docker run hello-world
```

## Details

The script installs:

- **docker-ce** - Docker Engine (Community Edition)
- **docker-ce-cli** - Command line interface
- **containerd.io** - Container runtime
- **docker-buildx-plugin** - Extended build capabilities
- **docker-compose-plugin** - Docker Compose V2

> [!NOTE]
> Docker Compose V2 is installed as a plugin and invoked with `docker compose` (space, not hyphen).

***

## Appendix

*Note created on [[2025-12-23]] and last modified on [[2025-12-23]].*

### See Also

- [[Bash - Cleanup Docker]]
- [[04-RESOURCES/Code/Bash/_README|Bash Code]]
- [[Linux]]
- [[Windows Subsystem for Linux (WSL)]]

### Backlinks

```dataview
LIST FROM [[Bash - Install Docker Compose]] AND -"CHANGELOG"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025




