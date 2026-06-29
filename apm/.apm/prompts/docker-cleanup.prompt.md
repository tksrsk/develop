---
description: >
  Interactive Docker resource cleanup. Lists all containers and
  orphaned images, asks the user which to remove, then prunes
  unused networks and volumes.
input: false
allowed-tools:
  - ask-user
  - bash
---

# Docker Cleanup

Ask the user for confirmation before each destructive step.

## 1. List all containers

Run `docker ps -a --format "table {{.ID}}\t{{.Names}}\t{{.Image}}\t{{.Status}}"` and present the result.

Ask the user which containers to remove (offer choices: all stopped containers, all containers, or none).

If the user selects any containers, remove them with `docker rm <name> <name>`.

## 2. List orphaned images

Images not referenced by any container. Run:

```
docker images --format "table {{.Repository}}\t{{.Tag}}\t{{.ID}}\t{{.CreatedSince}}\t{{.Size}}"
```

Also check for dangling (untagged) images:

```
docker images --filter dangling=true --format "table {{.ID}}\t{{.Repository}}\t{{.Tag}}"
```

Ask the user which images to remove (offer choices: unused only, dangling only, both, or none).

If the user selects any, remove with `docker image prune -a -f` (for unused) or `docker image prune -f` (for dangling only), or both.

## 3. Prune networks & volumes

Run:

```
docker network prune -f
docker volume prune -f
```

Report reclaimed space.
