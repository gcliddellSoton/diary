- Submit RA for sectioning work, collect Toluidine and practice sectioning
- Finish report for Khait reproduction!!!!! Wrap it by end of week!
- TC&A Coursework deadline is next Wednesday. Finish at least Task 2+half of 3
- Data Management Plan & Ethics submission due by the end of the week    
|   |   |   |
|---|---|---|
||Plan|Reflection|
|Mon|Bank Hols|Bank Hols|
|Tues|- - [x] Water plants (2hrs)<br>- - [x] Work out how to submit the DMP (1hr)<br>- - [ ] Update recording log & force upload to OneDrive<br>- - [x] Submit RA for Biolab to Planon<br>  <br><br>1. - [x] By manual selection in Audacity<br>2. - [x] Automatic saving in Python<br>  <br>  <br><br>  <br><br>Work out how to save audio snippets by 2 methods and do it for the directivity data:|Example clips:|
|Weds|- - [ ] Submit RA again<br>- - [ ] Continue with Analysis for report<br><br>  <br>  <br>  <br><br>- - [x] Look @ ALL waveforms manually in Audacity and manually pick out 5 x 2s test clips<br>- - [x] Check stft density option. Yes this exists.|We're interested in up to around 1000 lags, so choose fft size of 1024.<br><br>  <br><br>Max difference in distance of plant to microphone will be around 10cm.<br><br>  <br><br>0.1/343 = 0.0003 s<br><br>  <br><br>0.0003 * 500000 = 150 sample delay<br><br>  <br><br>Spent pretty much whole day inspecting the dataset manually to extract examples etc.<br><br>![Exported image](Exported%20image%2020260410113431-0.png)  <br>![Exported image](Exported%20image%2020260410113432-1.png)<br><br>==Check scaling!==<br><br>![Exported image](Exported%20image%2020260410113433-2.png)  <br>![Exported image](Exported%20image%2020260410113434-3.png)<br><br>==Look at the slice! And Band-pass to help Cross-corr!==<br><br>![Exported image](Exported%20image%2020260410113435-4.png)  <br><br>==Register for HPC==|
|Thurs|- [x] Continue with Write-up of report (refer to diary!)  <br>- [x] Submit RA again  <br>- [x] Festival of Open Science! (13.30-14.30)  <br>- [ ] Read Chieh-Hsi's paper<br><br>  <br>  <br><br>- [x] Collect order from EDMC  <br>- [x] Check OneDrive Sync  <br>- [x] Ask Admin about car parking  <br>- [ ] Water plants  <br>- [ ] Do back-ups!  <br>- [ ] Email Agnes/Nic!|TODO:<br><br>1. Calculate the energy & entropy of each of the overall signals in the run & re-sample 'plants' manually, then report the difference<br>2. Run thresholding script on all the files (-40dB FS = (add overlap parameter to sf.blocks() call)<br>3. Write up what is written in diary<br><br>  <br><br>**DG Meeting**<br><br>- Air-coupled thingy arrived. (BAT-1<br>- Kyle Dubber talk: use Haversine rather than Dirac delta for bandlimited response!<br>- What is a free-free model? Complete DoE|
|Fri||**Next Week**|
|Sat|||
    
**Potential Small Funded Projects**
 
Conservation moss planting - [https://www.mossy.earth/projects](https://www.mossy.earth/projects)
          
1. Plotted the waveforms in dB SPL in Python and visually inspected
2. Loaded into Audacity to pick out blips identified visually
3. Manually extracted 5 sample clips to test the analysis on
4. Decided on a threshold
5. Saved 2s clips based on threshold (to data folder)
 
|   |   |   |   |
|---|---|---|---|
|FileNo|Plant?|Cut?|Times (s)/Notes|
|106|n|-|Ch1 ==799s== (70-90kHz), Ch2 blip is in a different place but similar struct. ==-40dB== would catch Ch1 but not Ch2!|
|108|y|-|Blip apparent in waveforms, but is a transient from start-up of USG|
|110|y|-|==163s== (Ultrasound). ==362s== (Dips into audible range and mostly only on Ch2!)|
|112|n|-|==845s== Broadband blip only on Ch2|
|114|y|-|-|
|116|n|-|-|
|118|y|-|==1274s== Blip only in Ch1 (35-\>100kHz). Threshold of ==-40dB== would catch|
|120|y|-|-|
|121|y|-|Blip appears in Python waveform, but not in Audacity, possibly an artefact|
|123|y|-|-|
|125|n|-|-|
|127|y|n|==624s== Massive blip in Ch1. Around 200 samples. Little else.|
|129|y|y|-|
|131|y|n|==976s== (30-70kHz on both channels)|
|133|y|y|-|
|135|y|n|==20s== (14-50kHz, i.e. dips into audible range). Ch2 ==-40dB== threshold required. Blip at ==90s== in Ch1 would also be caught, but doesn't appear on Ch2|
|137|y|y|==155s== Dips into audible, lasts quite a period. Not convinced it's plant sound. ==615s== (20-40kHz) would be caught on Ch1 at ==-40dB==|
|139|y|n|-|
|143|y|y|-|
|145|y|n|-|
|147|y|y|-|
 
|   |   |   |   |
|---|---|---|---|
|FileNo|Plant?|Cut?|Times (s)/Notes|
|149|-|-||
|150|-|-||
|151|y|n|==344559957 samples (689s)== around 100kHz. Not obvious on channel 1, but does seem to be there.  <br>==378253123 samples (756s)==: 87kHz ish. On both channels. Has a weird quiet bit before it.  <br>==264242916 samples (528s)==: 30kHz. Both channels, but stronger on ch2  <br>==772769538 (1545s):== wideband, both channels. \<- this kind could be an issue!  <br>==808912288 samples (1617s):== 80kHz. Ch2 mostly  <br>==897454940 samples (1784s)==: unsure if plant sound, v different freqs on ch1 vs ch2|
|152|y|n||
|153|y|y||
|154|y|y||

**seedStuff Git Repo**

1. InitialExploration - looks at recordings 37-45, looks @
    1. Inside vs outside the egg
    2. Plots stft & waveform of 20-20kHz frequency sweep
    3. Plots waveforms of files 40-45 for side-by-side comparison
    4. Calculates the energy for each signal
2. thresholdAnalysis - still looking at recordings 40-45
    1. Look at histograms of the noise from the 2 microphones
    2. Establishes an approximate noise floor
    3. Extracts the blips and plots the number of blips as a func of threshold
 
1. thresholdBigFiles_claude - working on files 106-147, plot them side-by-side
2. Snippet_saveClip - save various small sections chosen manually from 106-147
3. Snipper_findBlip - Shows test of `fixBlips`  
**Agenda**  
General update:

1. Problems with the egg experiment
2. Outcomes of the first set of anechoic chamber recordings (signal repairs/pre-processing)
3. Show recording clips for discussion
 
Signal statistics 'by-chunk' is still proving tricky, although I am starting to get the problem broken down and come up with ways of summarising the recordings, e.g. getting the 'max' over manageably sized chunks (illustrate with a picture) to visualise the waveforms and locate anomalies. Have not yet managed to calculate entropy statistics on whole recordings \>10minutes though.
 
Plan for next week: Continue with write-up:

1. Calculate correlation of energy over window (and threshold) to pick out blips which appear on both channels
2. Perform remaining analysis on just channel 1
3. Extract blips using threshold of -40dB (Full-scale)
4. Compare number of blips between No-plants/With-Plants using Wilcoxon Rank Sum
 
**Minutes**

- Discussion of the egg xpmt: outcome, egg too small, ditch the data and don't look back
- 1st Anechoic chamber xpmt: outcome, difference in mics means should re-arrange them to match (Khait, 2024)
- 2nd Anechoic xpmt: some blips are still potentially there, although much quieter than those in (Khait, 2024). Some refinement of the 'onset detection' still required
 
**Actions**

- ==[MK] Check scaling Of spectrograms==
- ==[MK] Look at the slices! And Band-pass to help Cross-corr!==
- ==[TR/MK] Register for HPC!!==
    
==897454940 /500000=1794.9099==