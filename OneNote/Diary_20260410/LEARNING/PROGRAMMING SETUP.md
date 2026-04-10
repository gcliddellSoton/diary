1. **System-related commands & bash/regex examples**
2. **TMUX**
3. **SSH/IRIDIS/RSYNC**
4. **Linux File Mounting Issues**
5. **Personal Filestore**
6. **Back-up Notes**
7. **Git & GitLab**
    
3. **System-related commands**

=============================================  
`xdg-open .` or `nautilus .` opens the current working directory in the file manager. V useful...
   

Useful commands

|   |   |
|---|---|
|`free`|Look at memory information|
|`df/mount/fdisk/lsblk`|Disk information|
|`lscpu`|Get CPU information|
|`lspci`|PCI information (e.g. ethernet)|
|`htop`|CLI monitor of CPU and memory usage|
|`ps`|Process info. `ps –o ppid \<pid\>` show parent `ps aux \|grep $USER` shows all processes running under your username|
 
`watch` repeatedly outputs the same command. I use at to do `watch squeue –u gcl1r25` on the HPC
    
=============================================
 
Tried some file renaming today, with help  
```  
Done  
```
 
`[ -f "$file" ]` is a test command to see if $file exists and is a regular file –f specifically checks for regular files. Quotes protect against spaces ofc
 
`${file%.png}` is a parameter expansion with pattern removal operation % removes the shortest matching pattern from the end of the variable
 
**REGEX EXAMPLES I'VE USED**
 
|   |   |
|---|---|
|"\\cite\{\w*\}"|**\\cite\{ -** matches to "\cite{"  <br>**\w*** - is any sequence of alphanumeric characters|
|||
   
27. **TMUX** ![rlinux4noobs Cheatsheet with tmux shortcuts](Exported%20image%2020260410113140-0.png)

to list: `tmux ls`!!!!
 32. **SSH/IRIDIS/RSYNC** 
**Basic**
 
Log in to the desktop using  
**```**  
Navigate to the working directory of interest. If you want to be able to execute a python file directly (e.g. by just typing `filename.py` instead of having to write `python filename.py` you can add a header to the file that tells bash how to execute it:  
```  
And add the file permissions from bash  
```  
Then it's a case of setting the script running in the background (&) with logging (nohup)
 
**Better Config**
 
In order to avoid putting in your password every single time, generate an ssh key, using ssh-keygen (probably don't bother naming it anything funky):  
```  
Then copy your public key from the client computer (I.e. the one you are physically looking at, e.g. from /.ssh/id_ecdsa.pub. (Use SHIFT + Mouse select + RIGHT MOUSE KEY) to copy from the terminal! And paste it into the file /.ssh/authorized_keys ON THE HOST (e.g. IRIDIS). Make the file if it doesn't exist.
 
For some reason I found basic things like making files and copying/pasting stuff into them somehow quite difficult on Iridis and found it easier to write `cat /.ssh/id_ecdsa.pub` just redirect the output of a command you can redirect the output of a command executed in the bash terminal straight into a file, which can be done like this:  
```
 
It's also pretty tiresome to type the whole hostname every time, so add a file called 'config' in the /.ssh directory. The contents of my config file are:  
```  
Host desktop  
HostName uos-215763.clients.soton.ac.uk  
User gcl1r25  
Port 22
 
Host otherDesktop  
HostName uos-207319.clients.soton.ac.uk  
User gcl1r25  
Port 22
 
Host laptop  
HostName uos-GKFHD44.clients.soton.ac.uk  
User gcl1r25  
Port 22
 
Host iridis  
HostName loginX002.iridis.soton.ac.uk  
User gcl1r25  
Port 22  
```  
NOTE: IF YOU HAVE GIVEN YOUR SSH KEYS NON-STANDARD filenames THEN YOU WILL NEED TO INCLUDE AN EXTRA LINE for the variable IdentityFile
   

**Copying Files**
 
**HPC!!!**
 
To transfer the Avisoft collected audio data, I used  
```  
On Windows, installed WSL, then run `sudo apt install rsync`
 
Getting setup. I was majorly overthinking how output would be written etc etc. You login to the login node, then when you submit jobs, the compute node operates with the same file system as the login node, so there is no transfer/explicit communication required between the login node and the compute one.
 
Monitoring jobs could be really useful to identify where any problems are. If running things locally, I just look at htop or  
the System Monitor, but I haven't worked out how to monitor live processes on the HPC yet, here's some inspo:  
[https://stackoverflow.com/questions/24020420/find-out-the-cpu-time-and-memory-usage-of-a-slurm-job](https://stackoverflow.com/questions/24020420/find-out-the-cpu-time-and-memory-usage-of-a-slurm-job)
 63. **LINUX FILE MOUNTING** 
**Onedrive**
 
Installed rclone and started following this tutorial [https://rclone.org/onedrive/](https://rclone.org/onedrive/). Once config was complete there a 'success!' Page was printed, however the command `rclone lsd OneDrive:/my  
` failed with 2 errors.  
```  
The following did not work also, but had more informative looking errors  
```
 
**Mounting** **\\CSEG_3**
 
1. Mount the drive
2. SSH
3. Access in web browser ( [http://152.78.176.170:5000/](http://152.78.176.170:5000/) )
4. Try MobaXTerm
 
1. Open nautilus
2. In the search bar at the bottom, type `smb://152.78.176.150`
3. Username: gcl1r25; Domain: SOTON; Pwd: …
4. It works!
5. As of 17/07 this no longer worked...
 
Tried  
```  
secret-tool clear protocol "smb" server "152.78.176.170"  
secret-tool search --all xdg:schema org.gnome.keyring.NetworkPassword
 
It is now mounted, but not entiredly sure how. It is mounted in nautilus and I can access it from Python by doing using the path  
"/run/user/448136982/gvfs/smb-share:server=152.78.176.170,share=g_liddell/Avisoft Bioacoustics". I found this out by drag-and-dropping it from nautilus into the terminal...
 
- Also learnt today that 'Disk Usage Analyser' is an extremely useful tool and much more detailed/speedy than 'System Monitor'  
**WINDOWS**
 
- Opened WSL
- "sudo apt install ssh"
- Connected as gcl1r25@cseg_3 successfully
- Created an ssh key (edcsa) back in wsl
- Copied the public key to clipboard and executed echo "\<public key" \> .ssh/authorized_keys both in the base directory that ssh brings you into in [\\cseg_3](file:///\\cseg_3) (~\) and also into \volume1\G_Liddell\ which is the only place I have write permissions. Also tried this in the root directory (\) just to see if it worked, but permission denied
- rsync -av -v --progress 'OneDrive - University of Southampton/Documents/Avisoft Bioacoustics/RECORDER_USGH' gcl1r25@cseg_3:\volume1\G_Liddell
- The above line failed with permission denied error

- Tried minimal rsync example: "rsync /mnt/c/Users/gcl1r25/rsynctestdir /mnt/c/Users" which worked
- Setup ssh from WSL to desktop (copied config from windows .ssh to WSL .ssh and added WSL's public key to the desktop authorized keys)
- Ran "rsync -av --progress -v rsynctestdir gcl1r25@desktop:/home/gcl1r25" and confirmed that the file had transferred ✓
- Keeping in the same folder, ran "rsync -av --progress -v rsynctestdir gcl1r25@cseg_3:/volume1/G_Liddell"
- Next tried adding the public keys in "cseg_3:/etc/ssh" to the laptop, ssh'ing into cseg_3 and running the same command, but putting the source as a remote connection to my laptop and the destination as local

- Next went to desktop (UOS-215763) and tried `rsync -r -v --progress testOutput.sh [gcl1r25@152.78.176.170:/volume1/G_Liddell](mailto:gcl1r25@152.78.176.170:/volume1/G_Liddell`)` and got the same permission denied error
- Ssh'ed into cseg, and was able to execute `rsync -r -v --progress [gcl1r25@uos-215763.clients.soton.ac.uk:/home/gcl1r25/rsynctestdir](mailto:gcl1r25@uos-215763.clients.soton.ac.uk:/home/gcl1r25/rsynctestdir) /volume1/G_Liddell`
 
- rsync laptop -\> desktop
- rsync desktop -\>cseg_3
- Back-up to hard drive
 
Final command for laptop -\> desktop  
```
 
Final command desktop -\> cseg_3. Must be ssh'ed in cseg_3 due to permissions issues:  
```  
cseg_3 -\> desktop  
```
 
ONCE PER WEEK RUN THE FOLLOWING COMMAND  
```
   

For pulling the data from cseg_3…  
**Rsync!**  
```  
Copies only first level directories `-f "- /*/*"` excludes anything in a subdirectory, `-f "+ /*/` makes sure that all the directories  
must be included, then `-f "- /*` excludes anything that is not a directory.  
   
100. **Personal Filestore**

DON'T USE FILESTORE  
EDIT: DO USE FILESTORE FOR BIG STUFF
 
Moved all stuff from CSEG_3 to research filestore with this type of command:  
```  
NOTE that the `-a` flag prevents WAV files being transferred properly, possibly because the implicit –p (preserve permissions)
 105. **Back-up notes**

Timeshift on Linux  
Using rsync effectively: [https://www.reddit.com/r/linuxquestions/comments/1b74ucd/using_rsync_to_backup_effectively/](https://www.reddit.com/r/linuxquestions/comments/1b74ucd/using_rsync_to_backup_effectively/)
 
Should I be doing system-level back-ups or just files and folders?  
How can I do full OneDrive downloads
      

Why is my OneDrive saying I only have 200GB of space?  
Where
   
116. **Git & GitLab** 
**Index**  
**Introduction to Git**  
**Setting up GitLab**
   

**Git**
 
Git is already installed on the Linux machines. ==[Tried install on Windows Laptop: there are MANY options available on install. The only one that seemed questionable to me was minTTY, the terminal emulator used. Feels more complicated than Linux]==, but probably check on Software Centre! Then go to the command line and start following this tutorial [https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup#_first_time](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup#_first_time)
 
```
 
**GitLab**
 
Required an SSH key to allow committing from a local git repository to the remote repository. In bash, used [https://docs.gitlab.com/user/ssh/](https://docs.gitlab.com/user/ssh/) this tutorial to get a key-pair set up and then input it here: [https://git.soton.ac.uk/-/user_settings/ssh_keys](https://git.soton.ac.uk/-/user_settings/ssh_keys)  
```  
Leaving the default filepath/name and a password that I'll never guess again ofc  
```  
Then opened it with ```code \home\gcl1r25\.ssh\id_rsa.pub``` and copied it into the 'key' box on GitLab. I then had a go at cloning an 'example' repository, which sort of looks like it worked!  
```
 
**Troubleshooting**  
**SITUATION 1: CREATING A REPOSITORY & PUSHING/PULLING**  
==This isn't EXACTLY what I'd eventually like to do, which is just take a folder of stuff from my computer and just 'push' it all at once, with a new repository/log/readme etc being created automatically. We're getting closer though. On GitLab, there are allegedly some instructions on how to== ==push an existing Git repository with the following commands:==
 
==```==
 
But the ```remote add origin``` command didn't work for me. Maybe because I haven't actually set up the folder as a git repository yet?? Try this next! [https://git-scm.com/book/en/v2/Git-Basics-Getting-a-Git-Repository](https://git-scm.com/book/en/v2/Git-Basics-Getting-a-Git-Repository)
 
```
 
Or from Stack Exchange, don't even bother with the remote add origin... [https://stackoverflow.com/questions/33101962/how-to-create-a-new-gitlab-repo-from-my-existing-local-git-repo-using-cli](https://stackoverflow.com/questions/33101962/how-to-create-a-new-gitlab-repo-from-my-existing-local-git-repo-using-cli)  
```
 
For the SSH url I used git@git.soton.ac.uk:gcl1r25/khaitreproduction.git like when cloning the original test repository (which I deleted before doing this! The output I got was this (note that the main branch is 'main' because I forgot to specify 'master' instead!
 
```
 
==Basically, my situation (billy no(-team)-mates) is that I'd like to check out the main branch at the beginning of a session and commit all changes at the end of the day, with no messing around with separate branches or staging, because I just want to use it as a backup really.==  
==Further reading:== ==https://www.atlassian.com/git/tutorials/syncing#:~:text=The%20git%20remote%20command%20lets,direct%20links%20into%20other%20repositories====.==
 
**SITUATION 2: INCOMPLETE STAGING**  
One issue I have now had a few times is that I have committed changes, but forgot to stage a few of the files first! In this case, this is what NOT to do:  
```  
As it caused differences in branches that were supposedly at the same commit on different computers, which meant I couldn't merge! The only solution I found was to manually add the changes from computer 1 to the files in computer 2, then delete the whole folder on computer 1 and re-clone. Don't do this again…
   

**SITUATION 3: CONFLICTING COMMITED, BUT UNPUSHED CHANGES WHEN PULLING**
 
If merging obviously non-conflicting changes, one can use  
```  
But I have preferred to set the option  
```  
And so if you try to pull, an editor pops up asking you to write a 'merge message', which you write, and then realise that there is no obvious 'Save' or 'Exit' command! This is because the editor is VIM, and to exit with save, you must type ':wq' … :s
   

**SITUATION 4: I WANT TO SEE THE CHANGES I'VE JUST COMMITED BECAUSE I THINK I FORGOT SOMETHING**
 
`git show` will do this, as well as `git diff HEAD^ HEAD`  
`git show [filename]` also works!
 
If some temp files are clogging up the view, add –name-only  
**SITUATION 5: YOU'VE GRADUALLY CHANGED A FILE BEYOND ALL RECOGNITION. YOU'D LIKE TO KEEP IT, BUT ALSO HAVE THE OLD ONE BACK!!!**

1. Create a new file, with any of your favourite methods
2. Copy the contents of the old file into the new empty file and save it: it's history starts HERE
3. Follow this thread, i.e. use `git checkout \<commit\> file` then committing! [https://stackoverflow.com/questions/2733873/how-can-i-revert-a-single-file-to-a-previous-version](https://stackoverflow.com/questions/2733873/how-can-i-revert-a-single-file-to-a-previous-version)
   

**SITUATION 6: VIEWING/RECOVERING STASHED CHANGES!!**
      

**SITUATION 7: TRANSFERRING REPO TO GITHUB IN ORDER TO SHARE EXTERNALLY!**
 
Method I used was to go to GitHub, press 'New Repository' then 'Import'. Had to type in

1. HTTP URL from GitLab (NOT THE SSH ONE!!!)
2. username for GitLab w/0 domain name, i.e. `gcl1r25`
3. actual password for GitLab. Seems that this is avoidable by replacing with access token
 
It is then quite useful to add a remote so that it can be pushed to easily
    
**SITUATION 8: SSH ERROR**
 
Receiving error:  
```
 
Solution was to change to an HTTPS remote  
```
 
This then needs a username and password, which is a little annoying….
 
**SITUATION 9: I'VE STAGED SOME CHANGES, BUT WANT TO CHECK THEM BEFORE COMMITING**
 
```  
works, but this prints the whole of the files that have been changed. A more compact version is …  
``
   

**SITUATION 10: CHANGING BACK FROM AN HTTP REMOTE TO THE SSH ONE**
   

**SITUATION 11: KEEP GETTING ASKED FOR PASSWORD, EVEN THOUGH IT WORKED FINE BEFORE!**
 
`git push` was working fine on a Linux desktop, but when I tried to log in to the same computer via ssh, I was  
being asked for a password. When (via ssh) I reattached to a tmux session that had been running before, I was  
then not asked for the password again.  
```  
Fixes this for the open session, but not permanently!! Tried adding `AddKeysToAgent yes` at the very top of  
.ssh/config on both host and client side, but this did not seem to help! The following looks worth a read:  
[https://stackoverflow.com/questions/18880024/start-ssh-agent-on-login](https://stackoverflow.com/questions/18880024/start-ssh-agent-on-login)
 
This completely broke everything, and the thing that fixed it in a regular terminal ssh session was  
```
 
**SITUATION 12: I DON'T WANT TO PUSH CHANGES TO TEMPORARY FILES, BUT I ACCIDENTALLY STAGED EVERYTHING**
 
**SITUATION 13: I WANT TO REBASE, BUT KEEP ALL LOCAL CHANGES, SO THAT I CAN COMPARE RESULTS BETWEEN MY LOCAL CURRENT HEAD AND THE CURRENT REMOTE HEAD LATER**
 
```  
Then if doesn't work  
```  
Rebase version:  
```  
In the end I got half way through using the VScode GUI and then got sick of it. I used `git status` to check whether I was currently merging or rebasing (this changes whether you use `--ours` or `--theirs`) then did the rebasing version, I.e. checkout theirs, add all, then continue rebase.
   
            

for file in *.png.png; do  
if [ -f "$file" ]; then  
newname="${file%.png}"  
mv "$file" "$newname"  
Echo "renamed $file to $newname"  
Fi
               

```  
ssh uos-215763.clients.soton.ac.uk  
```  
#!/usr/bin/env python3  
# -*- coding: utf-8 -*-  
```  
chmod +x filename.py  
```  
nohup filename.py &
   

```  
ssh-keygen –t ecdsa
 
```  
echo "stuff you want to write to the file" \> theFile
            

```  
rsync -r -av --progress '/local/scratch/gcl1r25/GitRepos/Avisoft Bioacoustics' [gcl1r25@loginX002.iridis.soton.ac.uk:/scratch/gcl1r25/GitRepos](mailto:gcl1r25@loginX002.iridis.soton.ac.uk:/scratch/gcl1r25/GitRepos)
       
```  
rclone mount OneDrive:my/ /local/scratch/gcl1r25
   

Options for access:
 
**LINUX**
          
Trying to rsync files from windows to \cseg_3
    
Poor, but potentially workable solution:
 
```  
rsync -v -av --progress --ignore-existing 'OneDrive - University of Southampton/Documents/Avisoft Bioacoustics' desktop:'/local/scratch/gcl1r25/GitRepos'
 
```  
rsync -r -v --progress --ignore-existing gcl1r25@uos-215763.clients.soton.ac.uk:"/local/scratch/gcl1r25/GitRepos/Avisoft\ Bioacoustics" "/volume1/G_Liddell"  
```  
rsync -r -v --progress --ignore-existing "/volume1/G_Liddell" gcl1r25@uos-215763.clients.soton.ac.uk:"/local/scratch/gcl1r25/GitRepos/Avisoft\ Bioacoustics"
 
```  
rsync -r -a -v --progress --update --delete [gcl1r25@uos-215763.clients.soton.ac.uk:"/local/scratch/gcl1r25/GitRepos/Avisoft\](mailto:gcl1r25@uos-215763.clients.soton.ac.uk:"/local/scratch/gcl1r25/GitRepos/Avisoft\) Bioacoustics" "/volume1/G_Liddell"
   

```  
rsync -r -v --progress --ignore-existing --dry-run "/volume1/G_Liddell/Avisoft\ Bioacoustics"gcl1r25@uos-215763.clients.soton.ac.uk:"/local/scratch/gcl1r25/GitRepos"  
```
 
```  
rsync -av -f "- /*/*" -f "+ /*/" -f "- /*" "The Bat Rush/" "18 Month Report/"
    
```  
rsync -rv --progress "/local/scratch/gcl1r25/GitRepos/Avisoft Bioacoustics/xpmt_2_rush" "/run/user/448136982/gvfs/smb-share:server=biomonwa.files.soton.ac.uk,share=biomonwa/Avisoft Bioacoustics"
   

TODO: in the future, it would be great to have an automatic back-up J:Drive-\>CSEG, but not sure how this would work as CSEG doesn't seem to like being rsync'ed to!
       
\<Personal OneDrive\>  
Download and add as a subfolder of Southampton OneDrive
 
\<Southampton OneDrive\>  
Download and push back-up to external drive
 
\<Windows laptop C: drive\>  
???? Don't use?
 
\<Linux /local/scratch\>  
Timeshift?
 
\<CSEG_3\>  
??????? rsync script on desktop ???????  
Questions for iSolutions:
      

**Troubleshooting:**  
**SITUATION 1: CREATING A REPOSITORY & PUSHING/PULLING**  
**SITUATION 2: INCOMPLETE STAGING**  
**SITUATION 3: CONFLICTING COMMITED, BUT UNPUSHED CHANGES WHEN PULLING**  
**SITUATION 4: I WANT TO SEE THE CHANGES I'VE JUST COMMITED BECAUSE I THINK I FORGOT SOMETHING**  
**SITUATION 5: YOU'VE GRADUALLY CHANGED A FILE BEYOND ALL RECOGNITION. YOU'D LIKE TO KEEP IT, BUT ALSO HAVE THE OLD ONE BACK!!!**
 
**SITUATION 6: VIEWING/RECOVERING STASHED CHANGES!!**  
**SITUATION 7: TRANSFERRING REPO TO GITHUB IN ORDER TO SHARE EXTERNALLY!**  
**SITUATION 8: SSH ERROR**  
**SITUATION 9: I'VE STAGED SOME CHANGES, BUT WANT TO CHECK THEM BEFORE COMMITING**  
**SITUATION 10: CHANGING BACK FROM AN HTTP REMOTE TO THE SSH ONE**  
**SITUATION 11: KEEP GETTING ASKED FOR PASSWORD, EVEN THOUGH IT WORKED FINE BEFORE!**  
**SITUATION 12: I DON'T WANT TO PUSH CHANGES TO TEMPORARY FILES, BUT I ACCIDENTALLY STAGED EVERYTHING**
      

```  
git config --global user.name "Geoffrey Liddell"  
git config --global user.email "[g.c.liddell@soton.ac.uk](mailto:g.c.liddell@soton.ac.uk)"  
git config --list  
\> user.name=Geoffrey Liddell  
\> [user.email=g.c.liddell@soton.ac.uk](mailto:user.email=g.c.liddell@soton.ac.uk)  
git config --show-origin user.name  
\> file:/home/gcl1r25/.gitconfig Geoffrey Liddell
   

```  
ssh-keygen -t rsa -b 4096 -C [g.c.liddell@soton.ac.uk](mailto:g.c.liddell@soton.ac.uk)  
```  
\> The key fingerprint is: SHA256:3N1gItp5CqBjK+S4HQUtJJJCOnXbkW9RI/3bhbGmHKQ [g.c.liddell@soton.ac.uk](mailto:g.c.liddell@soton.ac.uk)  
The key's randomart image is:  
+---[RSA 4096]----+  
|+oo . ...oo |  
|=+ o o....... . |  
|+ o + .....+o + |  
| . + . +o+E+oo+ .|  
| .+ . o.S o..*.. |  
|+. + . o + . |  
|o.o . |  
| + . |  
|. . |  
+----[SHA256]-----+  
```  
git clone git@git.soton.ac.uk:gcl1r25/khaitreproduction.git  
\> Cloning into 'khaitreproduction'...  
remote: Enumerating objects: 12, done.  
remote: Counting objects: 100% (12/12), done.  
remote: Compressing objects: 100% (11/11), done.  
remote: Total 12 (delta 2), reused 0 (delta 0), pack-reused 0 (from 0)  
Receiving objects: 100% (12/12), 7.47 KiB | 3.73 MiB/s, done.  
Resolving deltas: 100% (2/2), done.
   

==```==  
==cd existing_repo====￼====git remote add origin== ==https://git.soton.ac.uk/gcl1r25/khaitreproduction.git====￼====git branch -M main====￼====git push -uf origin main==
   

```  
cd /home/user/my_project  
git init  
git add .  
git add LICENSE￼  
git commit -m 'Initial project version'
 
```  
git push --set-upstream git@gitlab.example.com:namespace/nonexistent-project.git master
   

```  
\> Enumerating objects: 5505, done.  
Counting objects: 100% (5505/5505), done.  
Delta compression using up to 8 threads  
Compressing objects: 100% (5504/5504), done.  
Writing objects: 100% (5505/5505), 9.55 MiB | 18.29 MiB/s, done.  
Total 5505 (delta 0), reused 4 (delta 0), pack-reused 0  
remote:  
remote:  
remote: The private project gcl1r25/khaitreproduction was successfully created.  
remote:  
remote: To configure the remote, run:  
remote: git remote add origin [git@git.soton.ac.uk:gcl1r25/khaitreproduction.git](mailto:git@git.soton.ac.uk:gcl1r25/khaitreproduction.git)  
remote:  
remote: To view the project, visit:  
remote: [https://git.soton.ac.uk/gcl1r25/khaitreproduction](https://git.soton.ac.uk/gcl1r25/khaitreproduction)  
remote:  
remote:  
remote: To git.soton.ac.uk:gcl1r25/khaitreproduction.git  
* [new branch] main -\> main  
branch 'main' set up to track '[git@git.soton.ac.uk:gcl1r25/khaitreproduction.git/main](mailto:git@git.soton.ac.uk:gcl1r25/khaitreproduction.git/main)'.
   

```  
git add .  
git push --amend
    
```  
git pull --rebase  
```  
git config pull.rebase false
                           

```  
(base) gcl1r25@uos-215763:/local/scratch/gcl1r25/GitRepos/khaitreproduction $ git push  
ssh: connect to host git.soton.ac.uk port 22: Connection refused
 
You can find some explanations for typical errors at this link:  
[https://red.ht/support_rhel_ssh](https://red.ht/support_rhel_ssh)  
fatal: Could not read from remote repository.
 
Please make sure you have the correct access rights  
and the repository exists.
 
```  
git remote set-url origin [https://git.soton.ac.uk/gcl1r25/khaitreproduction.git](https://git.soton.ac.uk/gcl1r25/khaitreproduction.git)
    
**```**  
git diff --cached ?[path]?  
```  
git diff --staged
    
**```**  
git remote remove origin  
git remote add origin [git@git.soton.ac.uk:gcl1r25/plantSoundReproduction.git](mailto:git@git.soton.ac.uk:gcl1r25/plantSoundReproduction.git)  
git branch –-set-upstream-t=origin/master master
    
```  
eval `ssh-agent -s`  
ssh-add ~/.ssh/id_ecdsa
 
```  
pkill ssh-agent  
eval $(ssh-agent -s)  
ssh-add ~/.ssh/id_ecdsa
   

```  
git restore --staged \<*file_pattern*\>
    
```  
git fetch origin # fetches but does not merge  
git merge –X ours origin/\<your-branch\>  
```  
git checkout –ours .  
git add -A  
git commit –m "Merge origin/\<your-branch\> , keep local conflict resolution"  
git diff HEAD origin/\<your-branch\>  
```  
git branch backup/local-before-rebase  
git fetch origin  
git rebase origin/\<your-branch\>  
git checkout --theirs .  
git add –A  
git rebase –continue