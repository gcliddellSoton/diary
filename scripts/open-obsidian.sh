#!/bin/bash
cd "$(dirname "$0")" || exit 1

# sync and open
bash obsidian-sync.sh
echo "sync on open... $(date '+%Y-%m-%d %H:%M:%S')"
obsidian || flatpak run --branch=stable --arch=x86_64 --command=obsidian.sh --file-forwarding md.obsidian.Obsidian @@u %U @@ --vault=.. &

wait

#push on close
echo "sync on close... $(date '+%Y-%m-%d %H:%M:%S')"
bash obsidian-sync.sh

exit
