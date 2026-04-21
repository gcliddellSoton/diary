#!/bin/bash
pwd
cd "$(dirname "$0")"
pwd

# sync and open
bash obsidian-sync.sh
echo "...sync on open..."
flatpak run md.obsidian.Obsidian --vault=.. &

wait

#push on close
echo "...sync on close..."
bash obsidian-sync.sh
