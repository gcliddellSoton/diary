#!/bin/bash
cd ..
echo "Obsidian syncing, pwd:"
pwd

if ! git diff --quiet || git diff --cached --quiet || [ -n "$(git ls-files --others --exclude-standard)" ]; then
	echo "changes detected, commit-pull-push..."
	git add .
	git commit -m "$(date '+%Y-%m-%d %H-%M-%S')"
	echo "...commit successful."
	git pull --rebase
	git push
	echo "...pull-push complete"
fi
