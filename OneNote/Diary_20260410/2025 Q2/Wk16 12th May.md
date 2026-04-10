**AIM**S

- **Statistical analysis of 'number of blips'**
- **Write-up of pre-processing & a tutorial**
- **SHOPPING LIST FOR NEXT EXPERIMENT**
   

|   |   |   |
|---|---|---|
||Plan|Reflection|
|Mon|- - [x] Identiplant QS6 submission & study Unit 7<br>- - [x] Read Chieh-Hsi's paper<br>- - [ ] Perform Wilcoxon test<br>- - [x] Look for noise distribution and add result to report<br>- - [ ] ~~Water plants~~<br>  <br>  <br><br>- - [ ] Generate plots for example 135/90s<br>- - [x] Fix khaitreproduction/folderSummary.py, which has a mistake in the check of contiguous plant IDs!!<br>- - [ ] Fix 'helperFunctions' in the other<br>- - [x] Make all axes the same size in figure 1<br><br>  <br>  <br><br>TODO:|(07.15-08.30) Commute took approx 1hr. Parked in 2hr bay 🙁  <br>(08.30-09.00) Faff  <br>(09.00-10.15) Some tidying of Git repositories, installed tmux on wsl, ran 'wavHistogram' code, submitted identiplant QS6  <br>(10.15-14.20) Fitting distributions to the noise data  <br>(14.20-15.00)<br><br>  <br><br>It seems that the error in 'sfLoad' that is occurring on the HPC could be because there's a missing wav file!!  <br>  <br>Noise is pretty Gaussian, but needs \> 6 sigma to reject all noise, due to the sample size.<br><br>  <br><br>Parallelised code for blipExtraction works well on Linux desktop, although still need to profile it.<br><br>  <br><br>Wilcoxon tests will be easy, but just need to make sure of using the correct correction factor!!<br><br>  <br>  <br><br>**Evening**  <br>**Summary 7 -\> -34dB**  <br>**Summary 8 -\> -40dB**  <br>**Summary 9 -\> -42dB**  <br>Now need to adjust from 'overlap threshold' method to 'cross-correlation threshold'!!<br><br>  <br><br>Also Coalescence Methods & skyline plots|
|Tues|- [x] ==Statistics Seminar pre-reading ✓==  <br>- [ ] ==Reading: Chapter 5?==  <br>- [x] ==Water plants==  <br>- [x] ==WRITE-UP: ADD TABLES FOR DIFFREENT THRESHOLDS!!==<br><br>  <br>  <br><br>TODO:<br><br>- Update README of 'khaitreproduction'<br>- Check diff on 'statFuntions'/'helperFunctions' and copy across from khaitreproduction|Python stuff learnt:  <br>Eval is bad  <br>Saving to json files good  <br>Glob is good  <br>Can set plot axis ticks easily with ax.set_yticks(…)<br><br>  <br><br>- Clipping present in id_131_sound_16<br>- Intensity has a bimodal shape, peak in lower end (presumably due to filtering), then another peak at around 1<br>- Lots of further data exploration|
|Weds|- - [x] ==TC&A Seminar==<br>- - [x] Add cross-correlation threshold to line 104 of 'snippet_extractFrom1File'<br>  <br><br>- [x] Add 'summary tables' with metadata to README  <br>- [x] Violin plots in 'khaitreproduction'  <br>- [ ] Remove 'thresholdOverlap' when using the cross-correlation threshold and try again  <br>- [ ] Uncomment 'sf.write' and start saving the blips<br><br>  <br><br>  <br><br>- [ ] Extract 2ms clips from blips by doing:  <br>s = s1[ np.argmax(s1) +/- 512]  <br>sf.write(s)|For 135/90s, blip appears in Ch1 at v high frequency (200kHz) and does show on Ch2, but only extremely weakly. In order to achieve a separable spike in the autocorrelation, I had to raise the high-pass cut-off to 170kHz!!<br><br>  <br><br>W/ corrWindowLen = 1024, 'corr' was too heavilly influenced by rms, so normalised end cross-correlation by it's own rms value corrNorm=corr/corr.std(). Results to the right!<br><br>  <br><br>Goodness of fit tests for the noise data don't run even on the HPC :(<br><br>  <br><br>Violin plots for 'khaitreproduction' now look good. Add them to the README, then post on GitHub & request feedback|
|Thurs|- [ ] Perform Wilcoxon test on summary7 and summary9  <br>- [ ] Calculate blip statistics on extracted blips<br><br>  <br><br>- [ ] Onset detection/rise time/blip length write function  <br>- [ ] Identify Measurement systems|(08.00-09.00) Looking at the low priority stuff: acquisition systems/Librosa  <br>(09.00-11.00) Wrote cross-corr code for 1 file  <br>(11.30-13.30) Debugged cross-corr code for 1 file  <br>(14.00-16.53) More debugging… :(<br><br>  <br><br>[https://www.digikey.co.uk/en/products/filter/data-acquisition-daq/1017?s=N4IgjCBcoMwCwA4qgMZQGYEMA2BnApgDQgD2UA2iAOwCcArFQAwBMIxtDMjb4cjMzGDw5VmANmH1RNHoLFiEdWWAFgkxMAxoIJGugqpIAusQAOAFyggAyuYBOASwB2AcxABfd8SXQQpqGBm-pDMdF4gEr4OACZWALRgjBBmlpAgPOYAnqb4Vpi4aJ5AA](https://www.digikey.co.uk/en/products/filter/data-acquisition-daq/1017?s=N4IgjCBcoMwCwA4qgMZQGYEMA2BnApgDQgD2UA2iAOwCcArFQAwBMIxtDMjb4cjMzGDw5VmANmH1RNHoLFiEdWWAFgkxMAxoIJGugqpIAusQAOAFyggAyuYBOASwB2AcxABfd8SXQQpqGBm-pDMdF4gEr4OACZWALRgjBBmlpAgPOYAnqb4Vpi4aJ5AA)<br><br>  <br><br>Debugging. Missing sub-brackets in np.concatenate([arr1, arr2]) got me for a good hour!! as well as the error of doing np.ones_like(arr.shape[1]) instead of np.ones(arr.shape[1])|
|Fri|HAVE DRAFT 1 FINISHED!!!  <br>VISIT BIOLAB  <br>CHECK MICHAL'S PICOSCOPE!||
|Sat|Identiplant Fieldwork (9-10)||
 
**For file 149...**
 
Channel 1:  
Maximum absolute value: 0.007729072734486191  
8 sigma: 0.009949474465165089  
Using HPC:  
Maximum absolute value: 0.008575439453125  
8 Std: 0.011515658321455005  
Kurtosis: 0.00044892617251512945  
imports complete...  
Channel 2:  
Maximum absolute value: 0.006930186551349254  
8 sigma: 0.008811895386781732
 
**For file 150...**
 
(proj-env) [gcl1r25@ruby056 seedStuff]$ python -i snippet_wavHistograms.py 150  
imports complete...  
Channel 1:  
Maximum absolute value: 0.0077200629423575945  
8 sigma: 0.009949170561562111  
Using HPC:  
Maximum absolute value: 0.008880615234375  
8 Std: 0.011513505232958037  
Kurtosis: 0.00046777300779066167  
imports complete...  
Channel 2:  
Maximum absolute value: 0.006777929442353232  
8 sigma: 0.008818784698785  
imports complete...  
Channel 1 done.  
imports complete…
    
**Summary 7 -\> -34dB**  
**Summary 8 -\> -40dB**  
**Summary 9 -\> -42dB**
 
Now need to adjust from 'overlap threshold' method to 'cross-correlation threshold'!!

|   |   |   |   |   |
|---|---|---|---|---|
|FileNo|Plant?|Cut?|Times (s)/Notes|Approx. Cross-corr threshold for segmentation?|
|106|n|-|Ch1 ==799s== (70-90kHz), Ch2 blip is in a different place but similar struct. ==-40dB== would catch Ch1 but not Ch2!|3.5|
|108|y|-|Blip apparent in waveforms, but is a transient from start-up of USG||
|110|y|-|==163s== (Ultrasound). ==362s== (Dips into audible range and mostly only on Ch2!)|==163s: 14==  <br>==362: 9==|
|112|n|-|==845s== Broadband blip only on Ch2||
|114|y|-|-||
|116|n|-|-||
|118|y|-|==1274s== Blip only in Ch1 (35-\>100kHz). Threshold of ==-40dB== would catch|==3.7==|
|120|y|-|-||
|121|y|-|Blip appears in Python waveform, but not in Audacity, possibly an artefact||
|123|y|-|-||
|125|n|-|-||
|127|y|n|==624s== Massive blip in Ch1. Around 200 samples. Little else.|==3.5==|
|129|y|y|-||
|131|y|n|==976s== (30-70kHz on both channels)|==7.5==|
|133|y|y|-||
|135|y|n|==20s== (14-50kHz, i.e. dips into audible range). Ch2 ==-40dB== threshold required. Blip at ==90s== in Ch1 would also be caught, but doesn't appear on Ch2|==20s: 10==  <br>==90s: 3.2==|
|137|y|y|==155s== Dips into audible, lasts quite a period. Not convinced it's plant sound. 615s (20-40kHz) would be caught on Ch1 at –==40dB==  <br>==1190s:== very audible|==75==|
|139|y|n|-||
|143|y|y|-||
|145|y|n|-||
|147|y|y|-||
 
|   |   |   |   |
|---|---|---|---|
|FileNo|Plant?|Cut?|Times (s)/Notes|
|149|-|-||
|150|-|-||
|151|y|n|==344559957 samples== around 100kHz. Not obvious on channel 1, but does seem to be there.  <br>==378253123 samples==: 87kHz ish. On both channels. Has a weird quiet bit before it.  <br>==264242916 samples==: 30kHz. Both channels, but stronger on ch2  <br>==772769538:== wideband, both channels. \<- this kind could be an issue!  <br>==808912288 samples:== 80kHz. Ch2 mostly  <br>==897454940 samples==: unsure if plant sound, v different freqs on ch1 vs ch2|
|152|y|n||
|153|y|y||
|154|y|y||
 
Chemicals for Hoaglands  
NI daq  
cable for scales
 
**AGENDA**
 
1. Go through first draft of write-up
2. Show 2 slides summarising the results
3. Ask about risk assessment
4. Ask about how running cost of GC is covered?
5. Discuss measurement system requirements:
    1. Inputs (4+, differential, +/- 5V)
    2. Resolution (16 bits)
 
**ACTIONS**

- Finish analysis [TR] Lab risk assessment witheld until finish!!
- Deadline for grant money is that items are delivered by August