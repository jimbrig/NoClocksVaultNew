---
creation_date: 2024-05-17
modification_date: 2024-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Best practices for writing Dockerfiles and building container images
tags:
  - Type/Note
  - Topic/Docker
  - Topic/DevOps
  - Status/Complete
aliases:
  - Docker Best Practices
  - Dockerfile Best Practices
publish: true
---

# Docker Best Practices

> [!SOURCE] Sources:
> - *[Best practices for writing Dockerfiles | Docker Documentation](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/)*

```table-of-contents
title: Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

Key practices for writing efficient, secure, and maintainable Dockerfiles.

## Build Optimization

### Enable BuildKit

```bash
export DOCKER_BUILDKIT=1
```

BuildKit enables parallel builds in multistage Dockerfiles.

### Multistage Builds

```dockerfile
# Build stage
FROM node:20-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

# Production stage
FROM node:20-alpine AS production
WORKDIR /app
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/node_modules ./node_modules
CMD ["node", "dist/index.js"]
```

### Layer Caching

Order commands from least to most frequently changed:

```dockerfile
# 1. Base image (rarely changes)
FROM node:20-alpine

# 2. System deps (changes occasionally)
RUN apk add --no-cache git

# 3. App deps (changes with package.json)
COPY package*.json ./
RUN npm ci

# 4. Source code (changes frequently)
COPY . .
```

## Package Management

### apt-get Best Practices

```dockerfile
RUN apt-get update && apt-get install -y \
    curl \
    git \
    vim \
  && rm -rf /var/lib/apt/lists/*
```

**Rules:**
- Combine `update` and `install` in one `RUN`
- Alphabetize packages for readability
- Clean up apt cache to reduce image size
- Don't run `apt-get upgrade` (base image's job)

## Entrypoint Patterns

### Script Entrypoint

```dockerfile
COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["postgres"]
```

**docker-entrypoint.sh:**
```bash
#!/bin/bash
set -e

if [ "$1" = 'postgres' ]; then
    chown -R postgres "$PGDATA"
    
    if [ -z "$(ls -A "$PGDATA")" ]; then
        gosu postgres initdb
    fi
    
    exec gosu postgres "$@"
fi

exec "$@"
```

### ENTRYPOINT vs CMD

| ENTRYPOINT | CMD |
|------------|-----|
| Main executable | Default arguments |
| Rarely overridden | Easily overridden |
| Use exec form `["..."]` | Use exec form `["..."]` |

```dockerfile
ENTRYPOINT ["s3cmd"]
CMD ["--help"]
```

- `docker run s3cmd` → shows help
- `docker run s3cmd ls s3://bucket` → runs command

## Environment Variables

```dockerfile
# Update PATH
ENV PATH="/usr/local/nginx/bin:$PATH"

# App configuration
ENV NODE_ENV=production \
    PORT=3000
```

## Security

### Non-Root User

```dockerfile
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser
```

### Minimal Base Images

| Image | Size | Use Case |
|-------|------|----------|
| `alpine` | ~5MB | Minimal Linux |
| `distroless` | ~2MB | Barebones runtime |
| `scratch` | 0MB | Static binaries only |

### .dockerignore

```
node_modules
.git
.env
*.md
Dockerfile
docker-compose*.yml
```

## Build from GitHub

```bash
docker build -t myimage:latest -f- https://github.com/owner/repo.git <<EOF
FROM busybox
COPY hello.c .
EOF
```

---

## See Also

- [[List - DevOps Tools]]
- [[MOC - DevOps]]

---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024




