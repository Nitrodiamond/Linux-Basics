#!/bin/bash

# List of packages to remove
packages=("docker.io" "docker-doc" "docker-compose" "podman-docker" "containerd" "runc")

# Loop through the packages and remove them
for pkg in "${packages[@]}"; do
    sudo apt-get remove -y "$pkg"
done

# Optionally, clean up residual configuration files
sudo apt-get autoremove -y
sudo apt-get clean
