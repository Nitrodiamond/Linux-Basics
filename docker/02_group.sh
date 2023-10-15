#!/bin/bash

# Check if the docker group exists
if getent group docker; then
  # Add the user caleb to the docker group
  sudo usermod -aG docker caleb
  echo "The user caleb has been added to the docker group."
else
  echo "The docker group does not exist. Please create the docker group first."
fi