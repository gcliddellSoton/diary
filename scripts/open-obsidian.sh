#!/bin/bash

VAULT = "/Documents/Obsidian Vault"
SYNC = "/Documents/Obsidian Vault/scripts/obsidian-sync.sh"

cd "$VAULT"
echo "Obsidian Vault opening..."
pwd

# pull and open
git pull --rebase
echo "...changes pulled"
flatpak run md.obsidian.Obsidian --vault="$VAULT"

wait

#push on close
ls -al
bash obsidian-sync.sh
