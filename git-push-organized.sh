#!/bin/bash
# Git helper for organized IWU repo

echo "Adding organized files to git..."
git add -A
git status

echo ""
echo "Suggested commit message:"
echo "refactor: organize IWU repository structure"
echo "- Organized images into categories (nsibidi, diagrams, personas)"
echo "- Fixed filenames with special characters"
echo "- Created asset manifest and documentation"
echo "- Synced with Arty repository"
echo ""
echo "Tags: #civilcollapse #civiluprising #obinexus"

read -p "Commit with this message? (y/n): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    git commit -m "refactor: organize IWU repository structure

- Organized images into categories (nsibidi, diagrams, personas)
- Fixed filenames with special characters
- Created asset manifest and documentation
- Synced with Arty repository

Tags: #civilcollapse #civiluprising #obinexus"
    
    echo ""
    read -p "Push to origin? (y/n): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        git push origin main
    fi
fi
