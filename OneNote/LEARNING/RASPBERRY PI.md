Plug the raspberry pi into a monitor and plug in a keyboard
 
If there are booting problems, it's probably a bad SD card/Image file!
 
To open a terminal on the screen, do Ctrl-Alt-F1 or Ctrl-Alt-F2 and to return to the desktop press Ctrl-Alt-F7
 
Get the MAC address by typing `ifconfig wlan0` or alternatively `sudo ip link show wlan0`. Make a note of it
 
Follow the instructions at [https://knowledgenow.soton.ac.uk/Articles/KB0050899](https://knowledgenow.soton.ac.uk/Articles/KB0050899) to add a device to SOTON-IoT, but for now, connect the RPi to eduroam!
 
For eduroam connection, open /etc/wpa_supplicant/wpa_supplicant.conf and add stuff. Follow [https://cat.eduroam.org/](https://cat.eduroam.org/)
 
```  
network={￼ ssid="eduroam"￼ scan_ssid=1￼ key_mgmt=WPA-EAP￼ eap=PEAP￼ identity="youridentity@youridentitydomain"￼ password="yourpassword"￼ phase1="peaplabel=0"￼ phase2="auth=MSCHAPV2"￼}  
```

\> From \<[https://forums.raspberrypi.com/viewtopic.php?t=86253](https://forums.raspberrypi.com/viewtopic.php?t=86253)\>