#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
if ! command -v git >/dev/null 2>&1; then echo "Git is not installed. Install Git first."; exit 1; fi
if ! git config user.name >/dev/null || ! git config user.email >/dev/null; then
  echo "Set your Git identity first:"
  echo 'git config --global user.name "Your Name"'
  echo 'git config --global user.email "your-verified-github-email@example.com"'
  exit 1
fi
if [ -d .git ]; then echo "This folder is already a Git repository."; exit 1; fi
git init -b main
git add "README.md"
git commit -m "docs: add project overview and run instructions"
git add "index.html"
git commit -m "feat: add accessible page structure"
git add "style.css"
git commit -m "style: add responsive user interface"
git add "script.js"
git commit -m "feat: implement interactive application behavior"
git add ".gitignore"
git commit -m "chore: add common local files to gitignore"
echo
echo "Local commit history created. To connect and push, run:"
echo 'git remote add origin https://github.com/YOUR-USERNAME/YOUR-REPOSITORY.git'
echo 'git push -u origin main'
echo "Replace the URL with the repository URL you created on GitHub."
