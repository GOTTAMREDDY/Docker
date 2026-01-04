#!/bin/bash
set -e

echo "===== Docker Installation Started ====="

# Ensure script is run with sudo
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root or with sudo"
  exit 1
fi

# Remove old Docker versions if any
dnf remove -y docker \
  docker-client \
  docker-client-latest \
  docker-common \
  docker-latest \
  docker-latest-logrotate \
  docker-logrotate \
  docker-engine || true

# Install required packages
dnf install -y dnf-utils device-mapper-persistent-data lvm2

# Add Docker official repository (RHEL compatible)
dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Enable stable repo explicitly
dnf config-manager --set-enabled docker-ce-stable

# Install Docker
dnf install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Start and enable Docker
systemctl start docker
systemctl enable docker

# Add ec2-user to docker group
usermod -aG docker ec2-user

echo "===== Docker Installed Successfully ====="
echo "Log out and log back in for docker group changes to take effect"
