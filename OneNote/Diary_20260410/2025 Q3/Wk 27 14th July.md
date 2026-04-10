**AIMS FOR THIS WEEK**

- Rushes & Barley planted
- Graphs from calibration experiment complete ( x3)
- Headlines of 9 month review written
- Identiplant Rosaceae
   

|   |   |   |
|---|---|---|
||Plan|Reflection|
|Mon|PLANTING<br><br>- - [x] Dig up rushes (hard + soft)<br>- - [ ] Clean them & record sample procedure<br>- - [x] Buy compost!!<br>- - [x] Debur pots<br>- - [ ] Confirm numbers of plants|(08.30-09.00) Re-read the art of growing plants for experimental purposes.<br><br>- "Pots size is small, if dry plant mass exceeds 2g/L of rooting volume"<br>- "SWC can be 0.12g/g in sand, up to 1.5g/g in compost"<br>- "Can be 4-fold variation in plant Vapour transport variables in a few minutes" - backed up by Vegetable Dynamicks paper<br>- "Air-dried soil -\> about -100MPa, and plants may be able to extract at down to -2MPa"<br>- 5 options given for water supply 1. Supply water to a target weight, controlling for plant mass (mitigate unequal supply with saucers); or 2. supply a layer of water to the pot bottoms for an equal amount of time; 3.|
|Tues|- - [x] Clean rushes & record sample procedure (2hrs)<br>- - [x] Weigh compost and pot (2hrs)<br>- - [ ] Produce graph 1 specified in 1_interim_calibration|(07.30-08.30) Cooking  <br>(08.30-09.30) Market garden-y things  <br>(09.30-16.45) Lab work (cleaning pots etc)  <br>(17.30-17.45) Messing with NI DAQ<br><br>  <br><br>Need to get one of those graphs nailed!!|
|Weds|- - [x] Planting!!!<br>    - Weigh pot<br>    - Weigh 180g soil<br>    - Label pot<br>    - Photograph plant with ID<br>    - Pack plant in pot, making sure to use all soil<br>- - [ ] Produce graph 1 specified in 1_interim_calibration|(08.00-09.15) Making notes on Spectral Subtraction methods  <br>(09.15-12.30) Setting up camera and potting materials  <br>(13.30-13.50) Opened up and started "1_Interim_different plants.docx"  <br>(13.50-14.00) git pulling/pushing on laptop +  <br>(14.00-16.00) ...|
|Thurs|Produce Outline TODO list for 9 month report:<br><br>- - [ ] Section & Subsection titles<br>- - [ ] Current progress description<br>- - [ ] Future work paragraph|(09.00-10.30) Relaxed morning at home, didn't get a lot done!  <br>(10.30-11.30) Drive  <br>(11.30-13.00) Washing up & cleaning  <br>(13.30-15.00) Spectral Subtraction Made test script that runs several methods (not working yet)  <br>(15.00-16.00) Going through stuff with Alanis  <br>(16.00-17.30)|
|Fri|**Agenda**<br><br>1. Confession booth + baklava<br>2. Rushes photos<br>3. Barley issues<br>  <br>  <br><br>  <br>  <br><br>**Minutes**<br><br>1. (TR) Bring things to the office instead of throwing!<br>2. (MK) Looking at calibration graph, discussing envelope preferred over rms/max value<br>3. (TR) Can trim roots. [bring sample next time] [show google maps photo]|(08.30-09.45) Trying to make calibration graph|
|Sat|||
    
**SPECTRAL SUBTRACTION NOTES**
 
1. **SSBoll (Matlab Function)**
2. **Scikit-MAAD**
3. **Audacity (already known to work well!)**
 
**SS Boll 79 Implementation**

1. Pick noise segment as beginning of recording [time] 3. Create matrix of overlapping windowed segments 5. Take fft over the relevant axis of the matrix, discard half, take magnitude squared -\> power spectrum 7. Over the first segments [first x columns] corresponding to the chosen time period of silence take the mean spectrum (variable N) 9. Iterate over segments with 3-point Moving Average Filter 11. Iterate over segments applying a 'Spectral Voice Activity Detector'
    1. If segment is not speech: attenuate signal by factor Beta (=0.03) and update the 'Maximum Noise Residue'
    2. If speech: subtract N from smoothed segment (variable D), then if any of the segment spectrum's coefficients are less then the Noise Residue Maximum, then do…
    
    Apply activation function to remove coefficients \< 0
    
      
    
12. Overlap add segments!
       
min(D_i, Pxx_{i,segment-1}-N_i, Pxx_{i,segment+1}-N_i)
       
**Scikit-MAAD [Multiresolution Analysis of Acoustic Diversity (MAAD)]**

\> From \<[https://github.com/scikit-maad](https://github.com/scikit-maad)\>   
**1. remove_background()**

- **Average spectrum calculation**: Compute mean profile across time axis of whole spectrgram: mean_profile = np.mean(Sxx, 1)
- **Noise profile estimation**: Apply morphological opening with Gaussian kernel to remove non-uniform background: noise_profile = grey_opening(mean_profile, gaussian_kernel)
- **Noise matrix creation**: Replicate noise profile across time dimension to create 2D noise matrix
- **SNR estimation**: Calculate signal-to-noise ratio: SNR_est = Sxx / noise_spectro
- **Attenuation map calculation**: Compute attenuation coefficients using spectral subtraction formula:

where λ (lambda), β₁ (beta1), and β₂ (beta2) are tunable parameters

- **Noise removal**: Apply attenuation map to original spectrogram: Sxx_out = an_lk * Sxx 
an_lk = (1 - λ * ((1/(SNR_est + 1))^β₁))^β₂
 
**2. remove_background_morpho()**

- **Seed calculation**: Create seed image by subtracting quantile threshold: seed = Sxx - quantile(Sxx, q)
- **Morphological reconstruction**: Apply dilation reconstruction with original as mask: BGNxx = reconstruction(seed, mask=Sxx, method='dilation')
- **Background subtraction**: Remove estimated background: Sxx_out = Sxx - BGNxx
- **Noise profile**: Calculate average noise profile along time axis: noise_profile = mean(BGNxx, axis=1)
 
**3. remove_background_along_axis()**

- **Noise profile estimation**: Calculate noise profile along specified axis using selected mode:
- **'median'**: noise_profile = median(Sxx, axis)
- **'mean'**: noise_profile = mean(Sxx, axis)
- **'ale'** (Adaptive Level Equalization): Uses histogram analysis to find unimodal distribution
- **Profile smoothing**: Apply running mean filter: noise_profile = running_mean(noise_profile, N)
- **Subtraction**: Remove noise profile from spectrogram:
- If axis=1: Sxx_out = Sxx - noise_profile[..., newaxis]
- If axis=0: Sxx_out = Sxx - noise_profile[newaxis, ...]
      

**Audacity**
 
Description from docstring in Github...  
[https://github.com/audacity/audacity/blob/master/au3/libraries/lib-builtin-effects/NoiseReductionBase.cpp](https://github.com/audacity/audacity/blob/master/au3/libraries/lib-builtin-effects/NoiseReductionBase.cpp)
 ![Exported image](Exported%20image%2020260410113525-0.png)

**9 Month Review Outline**
 
**Introduction:**

- History of phytoacoustics
- Current trends
- Missing pieces
 
**Approach:**

- Chronological description of work so far:
    - Initial egg xpmt (1-liner)
    - Processing tutorial
    - First xpmt with barley
    - Calibration with BAT transducers (done?)
    - Search for alternative plants & applications (rush lit. Review)
 
**BAT Calibration Chapter:**

- Materials & Method
- Results, e.g.
    - Distance must be less than x metres for current detection method to work
    - Field of View of microphones is less than y degrees
    - BAT detector is not suitable for detecting plant sounds without improving the amplification/clean-ness of the signal first
   

**Barley & Rushes Chapter:**

- Planting protocol
- Recording protocol
- Result    

**Discussion:**

- Summary of progression
- Potential avenues for exploration:
    - Contamination of calibration data with noise (by playing sounds in the chamber), so as to create a more realistic training & validation dataset for any event detection
    - Exploration of more signal processing techniques (have probably not demonstrated enough programming speed for this?)
    - If (noise contamination xpmt goes well): Outdoor monitoring in the field over a full year (would need to narrow the scope!)
    - Soil monitoring has not been explored yet