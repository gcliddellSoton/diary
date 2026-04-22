#!/bin/bash
cd "$(dirname "$0")" | exit 1

# sync and open
bash obsidian-sync.sh
echo "sync on open... $(date '+%Y-%m-%d %H:%M:%S')" >> sync.log
flatpak run md.obsidian.Obsidian --vault=.. &

wait

#push on close
echo "sync on close... $(date '+%Y-%m-%d %H:%M:%S')" >> sync.log
bash obsidian-sync.sh
