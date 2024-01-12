#!/bin/bash
set -e

# Stop the running container (if any)
containerid=$(sudo docker ps -q | head -n 1)

if [ -n "$containerid" ]; then
  sudo docker rm -f "$containerid"
fi
