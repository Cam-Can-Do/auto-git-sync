#!/bin/bash

cd "/home/ccandau/logseq/data";

# Pull changes from the remote repository
if git pull origin main; then
    echo "Pull successful"
else
    echo "Pull failed"
    exit 1
fi

# Stage all changes in the repository
git add .

# Commit changes
if git commit -m "Sync changes from remote"; then
    echo "Commit successful"
else
    echo "Commit failed"
    exit 1
fi

# Push changes to remote repository
if git push origin main; then
    echo "Push successful"
else
    echo "Push failed"
    exit 1
fi
