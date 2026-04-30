1. Back-up plans
2. Personal filestore
3. System back-ups
4. Robocopy for files & folders
5. Making a network drive for easier external drive usage

> [!abstract] THE 3-2-1 RULE
> - 3 copies
> - 2 physical locations
> - 1 offline copy

>[!todo]+ 
> - [x] Personal OneDrive: Download and add as a subfolder of Southampton OneDrive
> - [x] Southampton OneDrive: Download and push back-up to external drive
> - [ ] Windows laptop C: drive: ???? Don't use?
> - [ ] Linux  /local/scratch setup Timeshift?
> - [ ] CSEG_3 ??????? setup rsync back-up script on desktop ???????

 > [!caution]+ Questions for iSolutions
 >- Q: Why is my OneDrive saying I only have 200GB of space? 
 >- A: bcs policy has changed
> - Q: Should I be doing system-level back-ups or just files and folders? 
> - A: Files and folders for day-to-day Windows machine where few system changes have been made except software installations. For a server or Linux machine
> - Q: How can I do full OneDrive downloads?
> - A: ?

# 1. Back-up plans

 1. Store ALL day-to-day files & folders on OneDrive. Reports, text files, small numbers of photos/videos/audio files
2. Back-up OneDrive once/month to external drive + CSEG_3. This is often challenging because doing a full take-out of onedrive requires first downloading everything to an inadequately sized laptop internal drive
3. Make sure before the monthly back-up to pull all files from web apps, e.g. gitlab, overleaf
4. Research data (large audio recordings) are kept on CSEG_3, which is network-attached. This is backed-up to Research Filestore. Read/write operations are slower on filestore than cseg_3, hence why it is used as the back-up rather than main drive.
# 2. Personal Filestore

DON'T USE FILESTORE  
EDIT: DO USE FILESTORE FOR BIG STUFF
 
Moved all stuff from CSEG_3 to research filestore with this type of command:
```bash
rsync -rv --progress "/local/scratch/gcl1r25/GitRepos/Avisoft Bioacoustics/xpmt_2_rush" "/run/user/448136982/gvfs/smb-share:server=biomonwa.files.soton.ac.uk,share=biomonwa/Avisoft Bioacoustics"
```

>[!note] NOTE: the `-a` flag prevents WAV files being transferred properly, possibly because the implicit –p (preserve permissions)

# 3. System back-ups

- Timeshift on Linux would be easily the simplest option, if allowed by the university
- Using rsync effectively: [https://www.reddit.com/r/linuxquestions/comments/1b74ucd/using_rsync_to_backup_effectively/](https://www.reddit.com/r/linuxquestions/comments/1b74ucd/using_rsync_to_backup_effectively/)

# 4. Robocopy as rsync substitute for Windows
[30/04/2026]
#### Windows files & folders -> external drive
For files & folders back-up I was really struggling to get things onto my external 500GB hard-drive as drag-and-drop just wouldn't work. I decided to use Window's robocopy instead, but made some big mistakes initially! I did
	`robocopy Desktop D:\2026-04-30-0019-onedrive-backup`
	`robocopy Downloads D:\2026-04-30-0019-onedrive-backup`
	`robocopy C:\Users\gcl1r25\Downloads D:\2025-04-11-0753-backup`
When I looked in the hard-drive, both my back-ups were gone and replaced by the folders!!! I clearly misunderstood the syntax. which the docs say is: `robocopy <source folder> <dest folder> [files]` where `[files]` defaults to `*.*`. I decided to risk it and try again. The command that have worked safely was:
	`robocopy "C:\Users\gcl1r25\OneDrive - University of Southampton\Desktop" "D:\2026-04-30-0841-onedrive-backup\Desktop" /s`. 
The destination directory is automatically created. Presumably I should just remove the redundant folder names at the ends of the command, but I'm scared!
# 5. Making back-up to external drives easier with a network drive

[15/04/2026]
- First step is to turn on the PC and share a folder on the network! Or to share using samba
- Second step would be to install Docker and add a Nextcloud instance in a container https://www.youtube.com/watch?v=ewarxugZH3Q&t=8s. The video suggests Twingate for remote access
- UmbrelOS would make a good research start point for a simpler home server.
- Wireguard or OpenVPN would allow the home cloud to be accessible anywhere, or tailscale?
- Apache is the software required for self-hosting a web server

First thing I've tried is getting the twingates running. But got pretty stuck on just ssh'ing into Windows machines. A colossal faff compared to Linux!


## Nextcloud instructions
- Install Debian
- Install Docker
- Open Nextcloud github compose.yaml:
	- Comment out port 80:80/8443:8443
	- Uncomment APACHE_PORT and APACHE_IP_BINDING
	- SKIP_DOMAIN_VALIDATION: true
	- Uncomment caddy/configs
	- put in the domain name where it says to adjust your domain name and add 'tls internal'
- SSH into the server and mkdir nextcloud, cd in and paste the changed compose.yaml in
- `docker compose`