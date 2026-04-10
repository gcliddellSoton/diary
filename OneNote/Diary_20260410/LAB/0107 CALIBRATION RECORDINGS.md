\> [!caution] This page contained a drawing which was not converted.   
 
Picoscope generates 4Vpp :
 ![Exported image](Exported%20image%2020260410113029-0.png)   
Placed source and receiver at 8cm distance and set Picoscope Generator to 500mV amplitude. 0.5 x 20 = 10Vpp (and 300kHz). This produced the following output:
 ![Exported image](Exported%20image%2020260410113030-1.png)  

500mV (i.e. +10Vpk) in gives 80mV out. In the previous thing, +2Vpk gave +150mVpk ([calibrationLabBook.xlsx](https://sotonac-my.sharepoint.com/:x:/r/personal/gcl1r25_soton_ac_uk/Documents/Documents/Projects/The%20BAT%20Rush/data/calibrationLabBook.xlsx?d=we4f1ef69e5e440b289391ec5e006e0d6&csf=1&web=1&e=wTjfq8)). However, this was at a different distance!! Move them to 2.5cm apart (measured from the most forward point on the iris diaphragm attached to the sensor
 ![Exported image](Exported%20image%2020260410113031-2.png)  

Moving back to around 3.5cm…
 ![Exported image](Exported%20image%2020260410113032-3.png)  

To 4cm….
 ![Exported image](Exported%20image%2020260410113034-4.png)     

Starting test 2cm to 12cm at 0.5cm intervals. 1Vpk at Picoscope at 30kHz. For 12cm for example, measure 13cm between the iris diaphragms.
 
12cm:

![Exported image](Exported%20image%2020260410113039-5.png)  

11.5cm

![Exported image](Exported%20image%2020260410113040-6.png)

11cm

![Exported image](Exported%20image%2020260410113043-7.png)

10.5cm

![Exported image](Exported%20image%2020260410113044-8.png)   
10cm

![Exported image](Exported%20image%2020260410113045-9.png)  

9.5cm

![Exported image](Exported%20image%2020260410113046-10.png)  

9cm

![Exported image](Exported%20image%2020260410113047-11.png)  

8.5cm

![Exported image](Exported%20image%2020260410113051-12.png)  

8cm

![Exported image](Exported%20image%2020260410113052-13.png)  

7.5cm

![Exported image](Exported%20image%2020260410113054-14.png)  

7cm

![Exported image](Exported%20image%2020260410113055-15.png)   
6.5cm
 ![Exported image](Exported%20image%2020260410113056-16.png)  

6cm
 ![Exported image](Exported%20image%2020260410113057-17.png)  

???5.5cm???

![Exported image](Exported%20image%2020260410113058-18.png)  

5cm
 ![Exported image](Exported%20image%2020260410113105-19.png)  

4.5cm
 ![Exported image](Exported%20image%2020260410113106-20.png)  

4cm
 ![Exported image](Exported%20image%2020260410113108-21.png)  

3.5cm
 ![Exported image](Exported%20image%2020260410113110-22.png)  

3cm
 ![Exported image](Exported%20image%2020260410113111-23.png)  

2.5cm
 ![Exported image](Exported%20image%2020260410113113-24.png)  

2cm

![Exported image](Exported%20image%2020260410113114-25.png)        

Set up cm16 microphone 4.5cm from the source. USG Gain = 1
 
|   |   |
|---|---|
|cm16 peak response (dB)|Picoscope drive voltage peak amplitude (mV) (gain = 20)|
|-60.9|0|
|-55.6|20|
|-51.4|40|
|-49.2|60|
|-46.9|80|
|-45.3|100|
|-39.4|200|
|-36.0|300|
|-31.9|400|
|-29.9|500|
 
Rest of data in lab book and also in [calibrationLabBook.xlsx](https://sotonac-my.sharepoint.com/:x:/r/personal/gcl1r25_soton_ac_uk/Documents/Documents/Projects/The%20BAT%20Rush/data/calibrationLabBook.xlsx?d=we4f1ef69e5e440b289391ec5e006e0d6&csf=1&web=1&e=MFOOkg)
   

Response changes a lot with frequency as before. Also noticed some harmonics at some frequencies.
    
#### 02/07
 
Renamed some files to append "_mic1" using the following line, which I did not come up with myself:
 
find . -maxdepth 1 -name "ch1*.wav" ! -name "*_mic1*" -exec bash -c 'mv "$1" "${1%.wav}_mic1.wav"' _ {} \;
 
Did not rename on disk, only in OneDrive!!
    
#### 04/07
 
- Added extra DoF to the posts to measure at different angles
- Forgot to turn down Signal Generator frequency to 500Hz to do test blips
- Used the arms/clamps from Virtual acoustics to measure angles as it does 15 clicks / 90 degrees
- Took the BAT detector off the setup for measurements with the CM16s
- Flipped 90deg post over the top of the vertical post to get microphone closer
 
### 07/07
 
- Setup tape on the floor for 4.5cm, 30cm, 90cm at 0, 30, 90deg
- Thought about whether to switch over to a Tukey window or press ahead with a Hann window
- Left gain of USG at 5. Picoscope set to 1V, but 100Hz cycle frequency
- Workflow:
    - Set distance and angle (by tape on the floor) of microphone using microphone stand
    - Press trigger on USG
    - Trigger 3 x 0.02ms bursts on Picoscope at 5s, 10s, 15s
    - Load 0.2ms burst and trigger 3 times on 25s, 30s, 35s
    - Load 2ms burst and trigger 3 times on 45s, 50s, 55s
    - …
- at -30deg, 30cm, worked out how to capture Picoscope waveform! Will only save the one set though as they all look similar
- Finished mic2 around 2pm - ==Started mic1 (i.e. the one with the red dot!) at 17.21 [seem to have gotten mic1/mic2 mixed for this set! Will continue as is for the remainder of this run]==
- ==Realised halfway through measurements that amplitude was set to 2V instead of 1V!!! Continue as is for remainder, just to see how long it takes==
    
#### 08/07  
Outcome for today:

- Record with Mic2 again for 1 repeat, keeping at 2V. For the 2V 45mm, peak is around -30, and for 1V it's closer to -35
- Repeat for Mic1 and Mic2 with 120kHz blip
 
- Deleted yesterday's recordings as they were recorded at 2V
 
- At 10am -ish, went to make a Trigger cable for both the Avisoft recorder and the Oscilloscope. Took about 2hrs!!
- Trigger system works, but the Arduino seems to send the the oscilloscope trigger about 0.8 seconds late each time
- at 14.00, started doing the 120kHz runs. Think that the trigger seems to be failing occasionally
 
- Note from several days ago: taped the floor for all of the distance/angle measurements in the official run!
 
- Signal generator potentially not triggering on the 3rd/6th/9th blip of each recordings in:
    - ch1T2025-07-08_16-03-51_45_30_120_m1
    - ch1T2025-07-08_16-13-40_45_90_120_m1

This looks like it is a memory issue. Try unplugging the charging iPhone!
 - Tea interlude & Drew graphs to show exactly what we're trying to get out of this!
   

- Back stuck at 45_30_120_m1… Reliability of the Arduino triggering system has become incredibly low as laptop is struggling to keep up. Tried restart, but still performing slowly:
    
    - Ran disk clean-up, without much success
    - 'Optimised drives'
    - Raised laptop onto cool metal box, took away piece of paper from under laptop to make sure fan grating unblocked
    
    - Try turning off Channel A (which was the trigger channel)
    - Went to Timebase-\>ADC-\>Samplerate and reduced it down to 1MS/s. THIS SHOULD NOT AFFECT THE SIGNAL GENERATOR, WHICH PUSHES A CYCLE OF 32768 SAMPLES WITH A FREQUENCY OF 100HZ, i.e. 3.2MHZ! - Finished up on the red marked microphone, which seems to have been marked mic1! 
Still not great. When I click the Trigger button manually on PicoScope 7, it still only picks it up half the time…
    
REFLECTIONS:

- Still need to optimise procedure. Things learnt this time:
    - Mark the floor to save time on stuff
    - Decided to put all the recordings
    - Picoscope can be triggered by Microcontroller
    - USG RECORDER software can be triggered by Microcontroller, but haven't worked out what combination of settings in the RECORDER software allow you to control the 'STOP' command by hardware
 
- Slightly worried that I turned the Q-Amp on while the transducer was connected, and the bias led flashed on
    
The 'Toggle' Checkbox highlighted in red changes the behaviour of the PHYSICAL switch, whether it acts like a 'momentary' switch or a 'single throw or latching' switch. Then the dropdown highlighted in yellow, changes the recording response when the button is pressed or the button signal is applied.

![Exported image](Exported%20image%2020260410113118-26.png)      
Assessed situation: have some data for distance/angle, but missing BAT detector stuff, so set it up again on the microphone stand (new mounting of the Q-Amp!)  
Firing off a blip, there did seem to be a signal, but it was barely distinguishable from noise, so it may be necessary to get a good number of identical events to be sure!!
 ![Exported image](Exported%20image%2020260410113120-27.png)  
![Exported image](Exported%20image%2020260410113122-28.png)  

Unplugged UltraSoundGate and now Channel A (BAT Detector shows periodic noise!) It's at 50Hz 0.045/343 = 0.0001
 ![Exported image](Exported%20image%2020260410113123-29.png)   
- Recorded the 6 blips at 30kHz. Separate files. Now want to collect for 2V in order to have a 2-point calibration!
 
- Ext trigger is now firing willy-nilly and no idea why.
    - Tried raising up the Picoscope to avoid the T-piece touching
    - Plugging arduino into another computer makes things worse! Try external psu?

Solution was to go the Signal Generator-\>Trigger-\>Ext settings and change the threshold to 1V instead of 0V!
   
- Think LPF may have been active on Channel A in the last run…
    
- In 120kHz, 1V run didn't change to 3rd blip length fast enough!!
      

#### 10/07/25
 
Converted all .psdata files to .csv by adding "C:\Program Files (x86)\Pico Technology\PicoScope6\" to the system environment  
variables and then going to the directory where the waveforms are stored and using the cli
 
Picoscope /c *.psdata /f csv /b all
 
Alternatively if you don't know what the PATH is, copy and paste the following into the command-line while sitting in the data  
folder…
 
C:\Program Files (x86)\Pico Technology\PicoScope6\Picoscope.exe /c *.psdata /f csv /b all
 \> From \<[https://www.picotech.com/support/viewtopic.php?t=12885](https://www.picotech.com/support/viewtopic.php?t=12885)\>      
## 27/08
 
Returning to the setup. Followed instructions for the setup, then tried to test the Picoscope. Go to Sig Gen. Turn it on  
in the main tab, then got to Trigger, switch it to Manual, press the button to check the output, then change it back to EXT.
 
Encountered the same 50Hz noise problem as the nearest image above! Tried everything to do with separating signal cables  
from mains, putting the Picoscope in different position etc. but was also noticed that one of the Avisoft microphone was  
recording some weird noise patterns:
 ![Exported image](Exported%20image%2020260410113124-30.png)  

Clearly it was the V-Pole that was making the noise. This wasn't an issue before because the V-Pole was placed inside a plastic container hung from  
the Aluminium frame and this may have been enough to attenuate the vibrations. Another way to fix this is to wrap the V-Pole in some acoustic foam.  
After the foam, the signals looked like this:
 ![Exported image](Exported%20image%2020260410113126-31.png)  

showing a completely different noise pattern of around 742kHz, but possibly even louder than before!!  
Then taking the foam off again, the noise didn't return, so that can't have been the issue anyway.  
Attaching a wire to the Earth pin on the back of the Picoscope, then touching that to a grounded screw on  
a 2-gang plug fixed it, although noise levels are definitely higher on that channel than on the one monitoring  
the signal generator output!