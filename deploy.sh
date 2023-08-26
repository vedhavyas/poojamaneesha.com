#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi

# add hugo changes
git add ./

# commit and push hugo changes
git commit -m "$msg"

git push origin master

echo -e "\033[0;32mDeployed updates to GitHub.\033[0m"