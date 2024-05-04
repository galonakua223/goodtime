#!/bin/bash

# Navigate to the project directory
cd ~/workspace/goodtime223

# Initialize a new Git repository
git init

# Add all files to the repository
git add .

# Commit the changes with a message
git commit -m "first commit"

# Rename the branch to main
git branch -M main

# Add a remote repository named 'origin'
git remote add origin https://github.com/galonakua223

# Push changes to the remote repository
git push -u origin main

# Check if the push was successful
status_code=$(curl -s -o /dev/null -w "%{http_code}" https://github.com/galonakua223)
if [ $status_code -eq 200 ]; then
    echo "Push successful. Result: $status_code OK"
else
    echo "Push failed. Result: $status_code"
fi
