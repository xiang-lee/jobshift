#!/usr/bin/env bash
set -eu

REPO_NAME="ai-job-exposure-site"
GITHUB_USERNAME="YOUR_GITHUB_USERNAME"

if [ "$GITHUB_USERNAME" = "YOUR_GITHUB_USERNAME" ]; then
  echo "Edit GITHUB_USERNAME in publish-template.sh first."
  exit 1
fi

git init
git branch -M main
git add .
git commit -m "Initial static site"
git remote add origin "https://github.com/${GITHUB_USERNAME}/${REPO_NAME}.git"
git push -u origin main
