#!/bin/bash

# Check if the /docker directory already exists
if [ -d "/docker" ]; then
    echo "The /docker directory already exists."
else
    # Create the /docker directory
    sudo mkdir /docker

    # Check if the directory creation was successful
    if [ $? -eq 0 ]; then
        echo "The /docker directory has been created successfully."
    else
        echo "Failed to create the /docker directory."
    fi
fi
