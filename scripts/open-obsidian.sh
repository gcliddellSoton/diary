#!/bin/bash
echo "0 is: $0" >> /tmp/obsidian-debug.log
echo "dirname is: $(dirname "$0")" >> /tmp/obsidin-debug.log
echo "PWD is: $PWD" >> /tmp/obsidian-debug.log
cd "$(dirname "$0")"

echo "after cd..." >>/tmp/obsidian-debug.log
echo "0 is: $0" >> /tmp/obsidian-debug.log
echo "dirname is: $(dirname "$0")" >> /tmp/obsidin-debug.log
echo "PWD is: $PWD" >> /tmp/obsidian-debug.log

# sync and open
bash obsidian-sync.sh
echo "sync on open... $(date '+%Y-%m-%d %H:%M:%S')" >> sync.log
flatpak run --branch=stable --arch=x86_64 --command=obsidian.sh --file-forwarding md.obsidian.Obsidian @@u %U @@ --vault=.. &

wait

#push on close
echo "sync on close... $(date '+%Y-%m-%d %H:%M:%S')" >> sync.log
bash obsidian-sync.sh
