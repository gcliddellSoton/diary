- Get Alanis an induction with Nara
- For future refs. Emergency procedure should mention 999! + what would happen if lone working
- Door PINCH POINTS
- Don't put equipment damage in RAMS
- Add low-light as a hazard: take phone in at all times
 
|       |                                                                                                                                                                                                                                                   |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| ----- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|       | Plan                                                                                                                                                                                                                                              | Reflection                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| Mon   | - [ ] Planning & Reading (1hr)  <br>- [x] Message Michal about borrowing amplifier (10 mins)  <br>- [ ] RAMS for collecting rush samples                                                                                                          | 1. Juncus acutus - fibres for engineering purposes! ✓<br>2. Picoscope streaming vs block mode ✓<br>3. Sound attenuation in air [https://www.frontierlabs.com.au/post/sound-attenuation-through-the-air](https://www.frontierlabs.com.au/post/sound-attenuation-through-the-air)<br>4. After-work progress on Arduino soil moisture logger. All working now EXCEPT FOR RTC!!!<br><br>MKR won't take more than 5.5V on the Vin PIN!!                                                                                                                                                                                                                                                                                                                                                                                                      |
| Tues  | - [ ] 2hrs writing calibration processing scripts (+ INCLUDE 3RD CHANNEL!!)  <br>- [ ] Send Alanis the short clips!                                                                                                                               | 1. Did not do any of the things...                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| Weds  | - [ ] Contact Will King re: Friday seminars and Greenhouse space  <br>- [x] Siul for GC arrangements  <br>- [ ] 2hrs writing calibration processing scripts                                                                                       | "A Statistical Method of Event Detection For Phytoacoustics"  <br>(09.30-11.00) Growth chamber free.  <br>(11.00-12.30) Reading back the Hilbert Demo code  <br>(13.00-14.20) Chatting with Alanis re: stuff, handed over long reading list  <br>(14.20-16.10) Reading, some of MacKay, sifting through Google Scholar stuff, found ==CRITICAL REFERENCE== which is "Acoustic Emission Testing." Read Chapters 1-7 + 20 (p.3-173, p. 583-621)  <br>(16.10-16.25) Altered Hilbert Demo code to demonstrate why a low-pass filter element is useful!                                                                                                                                                                                                                                                                                      |
| Thurs | - [x] Re-draw calibration setup using the optical table etc  <br>- [ ] Add next Hilbert demo figure to the signal processing tutorial  <br>- [ ] Continue writing processing scripts (reserve 1.5hrs)  <br>- [ ] Reading first chapter of AE book | TODO<br><br>  <br><br>- - [x] M6 slot nuts x 2<br>- - [ ] Work out how to collect 1 minute of data at 500kHz from Picoscope software<br>- - [ ] Calculate time-domain entropy blockwise with overlap and display (for small example signal!)<br>- - [ ] Calculate STFT & calculate entropy of each column of the spectrogram<br><br>  <br><br>Timebase for oscilloscope to correspond to 500kHz or T=2e-6s is **128**  <br>Timebase passed as a variable to `ps5000aRunBlock()`                                                                                                                                                                                                                                                                                                                                                         |
| Fri   | - [ ] AE book Chapter 2  <br>- [x] Setup for next week                                                                                                                                                                                            | - (08.30-09.30) Tried installing CUDA, PyTorch & Kymatio<br>- (09.30-11.00) Cleaning disk space! Move CUDA etc to /local/scratch. Moved backup_personal to cseg_3 to clear up /local. Successful mount of \cseg_3!!!<br>- (11.00-12.00) Built Picoscope example program (not problems so far!)<br>- (12.00-13.00) Explored the 'ignoreZero' argument in the `spkit` library. Indeed it doesn't seem to make a difference, but should make not in case anything comes up later!<br>- (13.00-15.00) Meetings<br>- (15.00-17.00) 3D printing adapter. Showed Conor RH sensors<br>- (17.00-19.00) Costed NI acquisition system...<br><br>  <br><br>TODO<br><br>- - [x] Try example C program with Picoscope. IT WORKS!!!<br>- - [ ] Setup PRECISELY for next week<br><br>  <br><br>- - [x] Lend Audiomoth to AB<br>- - [ ] Show Fusion 360! |
| Sat   |                                                                                                                                                                                                                                                   |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
 
1. Created a new conda environment from .yml
2. Installed CUDA: [https://developer.nvidia.com/cuda-downloads](https://developer.nvidia.com/cuda-downloads) `sudo dnf -y install cuda-toolkit-12-9`
3. Installed PyTorch: [https://pytorch.org/get-started/locally/](https://pytorch.org/get-started/locally/) `pip3 install torch torchvision torchaudio --index-url [https://download.pytorch.org/whl/cu118`](https://download.pytorch.org/whl/cu118`)
4. Installed kymatio with `pip install kymatio`
5. Prepared for potential GPU use with `pip install scikit-cuda cupy`
    
**MEETING 1**
 
**Minutes**

- Discussion of what we have done with the week
- Don't try to turn the oscilloscope into a logger. Probably just Use the trigger and save the waveforms
- Alternative stuff. MK mentions having costed an 8 channel logger
- AB made formatting corrections and comments on signal processing tutorial. Need to think about assumed knowledge harder!
- MK mentions the parking sensor again!
- MK amplifier coming over from boldrewood next week. Fixed gain of x50, so need to moderate the signal strength in the Picoscope software!
- GL RA needed for fieldwork... AB needs to be on the growth cabinet risk assessment
 
**Actions**

- Review risk assessment for plant growing and send over to AB       

**MEETING 2**
 
**Agenda**

- No presentation to show
- Done:
    - Setting up stands
    - Preparing acquisition stuff: ready to collect data on Avisoft microphones from BAT source. Should we be trying to collect from the BAT receiver at 500kHz??
    - Rushes growing vigorously
- In progress:
    - Investigating whether Avisoft device can be collected from in Audacity
    - Tinkering with Picoscope custom acquisition program (so that we can collect at the right sample rate while also allowing access to the signal generator)
    - Making adapter to hold transducer at high precision
- For the next week:
    - Continuing to write up the analysis programs
    - DO the recordings
    - NEED TO PLANT PLANTS
 
**Minutes**

- (GL) Take photos of frame
- (TR) Traffic light system! Stephanie Robinson is the best time planner!
- (GL) Priority is ofc the calibration, but planting needs to start soon, can I start? Where to get pipe?
- (MK) Alex Toth for pipe
- (GL) Bringing in compost are there issues
- (ALL) Should be fine. TR: batch code, brand etc.
- (ALL) Use unsterilised compost. Do some weeding
- (TR) KEEP UP WITH TIMEPLAN!!
 
**Actions**

1. Be able to say whether the precision of microphone placement is good enough for repeatable measurements with the BAT transducer (add laser pointer to setup?)
2. Show the recordings at multiple distances and angles
3. Sort out pots & compost for growing in. Add AB to risk assessment
4. Email Stephanie Robinson