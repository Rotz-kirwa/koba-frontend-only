#!/bin/bash

echo "🔧 Fixing Frontend Repository Structure..."
echo ""

cd /home/user/Public/koba/frontend

# Create a new orphan branch (no history)
git checkout --orphan temp-clean-branch

# Add all current files
git add -A

# Commit
git commit -m "Clean frontend repository - root level structure"

# Delete old main branch
git branch -D main

# Rename current branch to main
git branch -m main

# Force push to GitHub
echo "Pushing to GitHub..."
git push origin main --force

echo ""
echo "✅ Frontend repository structure fixed!"
echo "GitHub now has clean structure with src/ at root level"
