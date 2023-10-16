#!/bin/bash

# Last Verified: 2023-10-03T20:48:00Z

# Set username variable as the output of the whoami command
username=$(whoami)

# Use username variable to specify sudoer file location
sudoer_file="/etc/sudoers.d/$username"

# Stop the script if a file already occupies the target location
if [ -e "$sudo_file" ]; then
  echo "Sudoers file for $username already exists at $sudoer_file."
  exit 1
fi

echo "user ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee -a "$sudoer_file"

sudo chown root:root "$sudoer_file"
sudo chmod 0440 "$sudoer_file"