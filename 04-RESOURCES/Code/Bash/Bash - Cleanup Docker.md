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
  - Cleanup Docker
  - Docker Cleanup Script
publish: true
permalink:
description: "Bash script for cleaning up Docker containers, images, and volumes."
cssclasses:
  - code
---

# Cleanup Docker

```table-of-contents
title: ## Contents 
style: nestedList
minLevel: 1
maxLevel: 4
includeLinks: true
```

## Overview

Scripts for cleaning up unused Docker containers, images, and volumes to reclaim disk space.

## Code

### Simple Cleanup

```bash
# remove all images
docker images -q | xargs docker rmi

# remove all containers
docker ps -q | xargs docker rm
```

### Advanced Cleanup Script

```bash
#!/bin/sh
# cleanup docker files: untagged containers and images.
# use `docker-cleanup -n` for a dry run to see what would be deleted.

untagged_containers() {
    # print containers using untagged images
    docker ps -a | tail -n +2 | awk '$2 ~ "^[0-9a-f]+$" {print $'$1'}'
}

untagged_images() {
    # print untagged images
    docker images | tail -n +2 | awk '$1 == "<none>" {print $'$1'}'
}

# dry-run
if [ "$1" = "-n" ]; then
    echo "=== Containers with uncommitted images: ==="
    untagged_containers 0
    echo
    echo "=== Uncommitted images: ==="
    untagged_images 0
    echo
    echo "=== Dangling volumes: ==="
    docker volume ls --filter dangling=true -q
    exit
fi

if [ -n "$1" ]; then
    echo "Cleanup docker files: remove untagged containers and images."
    echo "Usage: ${0##*/} [-n]"
    echo " -n: dry run: display what would get removed."
    exit 1
fi

# remove containers with untagged images
echo "Removing containers:" >&2
untagged_containers 1 | xargs --no-run-if-empty docker rm --volumes=true

# remove untagged images
echo "Removing images:" >&2
untagged_images 3 | xargs --no-run-if-empty docker rmi

# remove dangling volumes
echo "Removing volumes:" >&2
docker volume prune -f | sed '/Total reclaimed space/d'
```

### Modern Docker Commands

For recent Docker versions, you can use built-in prune commands:

```bash
# remove all stopped containers
docker container prune -f

# remove all unused images
docker image prune -a -f

# remove all unused volumes
docker volume prune -f

# remove all unused networks
docker network prune -f

# remove everything unused (comprehensive cleanup)
docker system prune -a -f --volumes
```

## Details

The advanced script provides:

- **Dry run mode** (`-n` flag) to preview what would be deleted
- Targeted removal of containers using untagged images
- Removal of untagged/dangling images
- Cleanup of dangling volumes

> [!WARNING]
> Be careful with these commands in production environments. The `docker system prune -a` command will remove all unused images, not just dangling ones.

***

## Appendix

*Note created on [[2025-12-23]] and last modified on [[2025-12-23]].*

### See Also

- [[04-RESOURCES/Code/Bash/_README|Bash Code]]
- [[Linux]]
- [[Windows Subsystem for Linux (WSL)]]

### Backlinks

```dataview
LIST FROM [[Bash - Cleanup Docker]] AND -"CHANGELOG"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025



