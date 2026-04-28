**THE PLAN**

- ✓ COLLECT SOME DIRECTIVITY DATA FOR THE MICROPHONE
- RECORD 2 x ITERATIONS OF PLANT SOUNDS: ESTIMATE CHANGEOVER TIME
    
- Chamber not cleared. Some changeover time with previous occupant
- Setting up in room
   

**TODO/ISSUES:**

- Lack of AMP for ultrasound buzzer
- ✓ Wire missing from buzzer box
- Power supply is 12V. Spec is for 10Vrms (14Vpp)
- ✓ LACK OF RULER!
- LACK OF SHARPIE!    

**FINAL SETUP FOR THE DAY**:

- Buzzer with 5V from Arduino, which is in turn powered by 12V from lamp psu from lab
- Placed on pedestal. Distance from mic to buzzer measured as 30+/-1 cm
       ![Exported image](imgs/Exported%20image%2020260410112945-0.jpeg)      
**THE BASICS: GETTING A 1HR RECORDING!**
 
- Records past 999s fine (observed in program, but not in file) - Program stopped by 26 minutes - Recording no. 60 will be run for 20 minutes with checking and then will be ENDED.
    - At 1.95GB recording 60 was saved to disk and Avisoft automatically started a new recording. From the file size (2 channels, ~2bytes/sample) we can see that the recording overruns at about 1050 seconds (17.5mins)
    - After second recording, laptop screen locked up and the recorder had stopped (which came first I don't know!), but both recordings 60 and 61 seem to be intact
      
    
- RECORDING 62 JUST STOPPED AT 116mb AND I DON'T UNDERSTAND WHY!!!! Have tried changing the lock screen settings - Now on recording 65 with both mics similarly positioned next to each other. Laptop seems to be cured of going to sleep - ==Recording 69 = directivity! Approximately at 0, 30, 60, 90, 120, 150, 180 degs!==
          
**02/04**
 
- Placed 'initial 5' plants in the chamber as a test run
- CH1-\>Cable1-\>facing plants
- Try changing save location to [\\cseg3](file:///\\cseg3). Too slow! Might be worth changing to wired connection, but otherwise continuing to save locally - Interesting new discovery! If you save channels separately, you can record 34 minutes instead of 17! Fits with the theory that there is a maximum file size. WAV files in general have file size recorded in a 32uint in the header. 2^31 = 2E9 so this figures!
    
|   |   |   |
|---|---|---|
|**Recording no.**|**Is plant-y?**|**Mic Config**|
|70 (stereo)|Y|Mic1-\>Cable1-\>Ch1|
|73/58|N|Mic1-\>Cable1-\>Ch1|
|75/60|Y|Mic2-\>Cable1-\>Ch1|
|78/63|N|Mic2-\>Cable1-\>Ch1|
|79/64|Y|Mic1-\>Cable2-\>Ch2|
|81/66|N|Mic1-\>Cable2-\>Ch2|
|83/68|Y|Mic2-\>Cable2-\>Ch2|
|84/69|N|Mic2-\>Cable2-\>Ch2|
 
- RENAMED CH2 RECORDINGS TO MATCH CH1 NAMES!!
- GAIN SETTING 5!
    
PROCEDURE:

- Ch1 cable and mic marked pink
- Press record. Time manually
- Record sequentially treatment 1, 2, 3 etc.
- Swap Mics between cables every 2 repeats
- Trim naively using only the first x samples  
![Exported image](imgs/Exported%20image%2020260410112948-1.png) ![Exported image](imgs/Exported%20image%2020260410112953-2.png)