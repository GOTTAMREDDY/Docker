#!/bin/bash
set -e

echo "===== Installing Docker on Amazon Li ====="

# Must run as root
if [ "$EUID" -ne 0 ]; then
  echo "Run with sudo"
  exit 1
fi

# Update system
yum update -y || dnf update -y

# Install Docker
if command -v yum >/dev/null 2>&1; then
  yum install -y docker
else
  dnf install -y docker
fi

# Start and enable Docker
systemctl start docker
systemctl enable docker

# Add ec2-user to docker group
usermod -aG docker ec2-user

echo "===== Docker Installed Successfully ====="
echo "Log out and log back in to use Docker without sudo"
