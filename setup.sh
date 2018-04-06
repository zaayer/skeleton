#! /usr/bin/env sh

# Remove the read me from the skeleton
echo "Removing README.md and creating a blank README.md\n"
rm README.md
touch README.md

# Remove the license
echo "Removing LICENSE and creating a blank LICENSE\n"
rm LICENSE
touch LICENSE

# Remove all the git info to start fresh
echo "Deleting all git info\n"
rm -rf .git

echo -n "Input new name for the project: "
read new_name

if [ "$new_name" ]; then
    mv skeleton/ $new_name
    git init
    git add -A
    echo "skeleton has been renamed to $name and \
	    'git init; git add -A' has been run."
else
    echo "No name supplied."
    echo
    echo "Rename skeleton then run 'git init; git add -A'"
fi
