#!/bin/bash

# Set the name of the file to add
filename="concepts.md"

# Add the file to the Git index
git add $filename

# Commit the changes to the default branch
git commit -m "Add $filename to repository"

# Get a list of all branches except the default branch
branches=$(git branch | grep -v "^\*" | sed 's/^[[:space:]]*//')

# Loop through each branch and merge the changes from the default branch
for branch in $branches
do
  # Checkout the branch
  git checkout $branch

  # Merge the changes from the default branch
  git merge master -m "Merge master into $branch"

  # Push the changes to the remote repository
  git push origin $branch
done

# Checkout the default branch again
git checkout master
