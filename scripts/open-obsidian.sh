#!/bin/bash
cd "$(dirname "$0")" || exit 1

# sync and open
bash obsidian-sync.sh
echo "sync on open... $(date '+%Y-%m-%d %H:%M:%S')"
# Launch Obsidian depending on OS
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
    # Windows via Git Bash - blocks until Obsidian closes
    cmd //c start /wait "" obsidian --vault=..
else
    # Linux via Flatpak - doesn't block, so background + wait
    flatpak run md.obsidian.Obsidian --vault=.. &
    wait $!
fi

wait

#push on close
echo "sync on close... $(date '+%Y-%m-%d %H:%M:%S')"
bash obsidian-sync.sh

exit
