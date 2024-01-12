#!/bin/bash
set -e

# Stop and remove the running container (if any)
container_id=$(sudo docker ps -q | head -n 1 || true)

if [ -n "$container_id" ]; then
  sudo docker rm -f "$container_id"
fi
