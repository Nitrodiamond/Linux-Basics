#!/bin/bash

# List content in current directory
ls 

# List content of a specific directory
ls /usr

# List multiple directories 
ls ~ /usr

# List the long format of directory
ls -l

# List all files, even the hidden ones
ls -a
ls --all 

# Lists content, but adds '/' if it's a directory
ls -F

# List content in reverse order
ls -r 

# Sort results by file size
ls -S 

# Sort by text modification time
ls -t 

# View the details about the actual directory and not the contents
# inside the directory
ls -ld 