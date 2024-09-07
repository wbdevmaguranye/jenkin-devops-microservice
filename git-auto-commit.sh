#!/bin/bash

# Check for commit message argument
if [ -z "$1" ]; then
  echo "Please provide a commit message."
  exit 1
fi

# Add all changes to staging
git add *

# Commit the changes with the provided message
git commit -m "$1"

# Push changes to the remote repository
git push -u origin main

echo "Changes have been committed and pushed to the main branch."
