**Identiplant 13**
    
- [x] ==Send Michal file + scripts!==  
- [x] ==Rebound Time calculation for calibration report==  
- [x] ==Optimise noise reduction method!==  
- [ ] ==Look over the recording plan! To decide in 2 weeks: whether to try to keep the rushes alive through September==
 
Breakdown of Noise Reduction Tasks:

- Decide whether to go down pipe route or to clean and save files in audacity
- Achieve target speed on 1 minute clip
- Test on 30 minute recording from previous experiment
- Integrate into old 'extractFrom1File' script
- Run on full dataset from 'khaitreproduction'on multiple recordings to test time
 
Breakdown of Blip Analysis Tasks:

- Fully implement the 'feature extraction' algorithms on the Khait dataset
- Perform classification on the Khait dataset to reproduce their results
- Integrate extra 'Entropy-based' features on top of Energy etc. And perform a Factor Analysis
    
|   |   |   |
|---|---|---|
||Plan|Reflection|
|Mon|TODO:<br><br>1. - [x] Check Spectrogram of ssAudacity against all the other methods!<br>2. - [ ] If much better, write down all possible optimisations…<br>3. - [ ] Email Xize<br>4. - [ ] Rebound Time Calculation<br>5. - [ ] Lay out tasklist for designing the 'Analysis Pipeline'|For 1 minute clip:<br><br>  <br><br>```<br>Noise Reduction Time = 1230.968s￼Params:￼Reduction	=	24.0dB￼Sensitivity	=	4.0￼Window	=	1024<br><br>Noise Reduction Time = 646.365s￼Params:￼Reduction	=	24.0dB￼Sensitivity	=	4.0￼Window	=	2048<br><br>But on 50GB desktop…<br><br>Noise Reduction Time = 570.868s<br>Params:<br>Reduction       =       24.0dB<br>Sensitivity     =       4.0<br>Window  =       1024<br>```<br><br>  <br>  <br><br>```<br>Noise Reduction Time = 507.412s<br>Params:<br>Reduction       =       24.0dB<br>Sensitivity     =       4.0<br>Window  =       2048<br><br>This might be just due to chance… Would need to investigate.<br><br>Therefore, for a 60 minute recording, that would be potentially around 10 * 60 = 600minutes (10hrs). * 120 recordings = 1200 hrs. 1200/24 = 50 days. Speed-up will be essential!<br>```<br><br>  <br><br>1. `Automate Audacity directly using pipeclient.py… Feasibility check is on whether we can afford to store double the number of files…120GB *2 = 240GB. This is absolutely fine :) as long as it's not on the laptop lol`|
|Tues|- [x] Email Xize  <br>- [ ] Email Tiina about Friday<br><br>  <br>- Test SoX<br>- Wrap Audacity code for Python<br>  <br><br>Unit tests:<br><br>- run `plot_remove_background.ipynb`<br>- run `snippet_compareSpectralSubtractions.py`|AM<br><br>- Re-ran spectral subtraction code. Didn't make many changes, but fixed MAAd notebook<br>- Added some plots to the spectral subtraction write-up<br><br>PM<br><br>- Submitted Pull Request to PicoSDK-python-wrappers<br>- Watered plants<br>- Started filling in lab book watering spreadsheet<br>  <br><br>  <br><br>PM<br><br>- Wrote new ssAudacity script|
|Weds|- [x] Rebound time calculations (continue write-up)  <br>- [x] Run remove_background_along_axis() on a 30 minute clip in blocks<br><br>  <br>  <br><br>- [x] Email Xize  <br>- [x] ~~Email Tiina about Friday~~<br><br>  <br>  <br><br>TODO  <br>- [x] Add 'noise level' to distAnglePlot (1hr)  <br>- [x] Compare distAnglePlot before and after spectral subtraction (1hr)  <br>- [x] Watch Empirical Mode Decomposition video (10 mins)  <br>- [x] Make notes on STFT 'COLA' condition (30 mins)|(09.00-10.30) Made notebook checking how fast it would be to call `remove_background_along_axis()` on a really long signal. It worked fine!  <br>(10.30-11.00) Dog walk  <br>(11.00-12.20) Did the 'rebound calculation' for a test file.  <br>(12.20-13.40) Lunch<br><br>  <br>  <br><br>(14.00-16.00) Added the 'pre-processing' step to the distAnglePlot script. It takes nearly an hour now!!  <br>(16.00-18.30) Notes on EMD, Hilbert, Gabor (STFT) etc. Esther Explains is a good source on EMD!|
|Thurs|- [ ] Run extraction algorithm on calibration dataset to try benchmarking  <br>- [ ] Visualise Recording Plan  <br>- [ ] Create instruction manual for watering  <br>- [x] Write-up of noise reduction method improvements to be made<br><br>  <br><br>- [ ] Run Kymatio examples again  <br>- [ ] C25 Advanced Transforms lecture 4  <br>- [ ] Statistical Signal Processing: Estimation (Have a look)|(08.45-12.00) Messing with ssAudacity_fast.py, which still doesn't seem to be working exactly like ssAudacity, but is getting closer & IS much faster!  <br>(12.00-13.10) More messing with ssAudacity: changing the window size helped a lot, and allowed the median filter to not kill everything! TODO: try increasing the size of the median filter!!  <br>(13.45-14.30) Adding noise floor line to distAndAnglePlot.py  <br>(15.40-16.30) Reinstalled Audacity!<br><br>  <br><br>TODO<br><br>1. Re-run 'distAndAngle' WITH ssAudacity(), but do it on the HPC!!!<br>2. Create a script that checks the % success rate of a threshold, based on the dataframe of signal statistics<br>3. Add the line 'sensitivity = sensitivity * log(10)' !! to ssAudacity_fast<br>  <br>![Exported image](Exported%20image%2020260410113554-0.png)|
|Fri|**Meeting Notes**<br><br>- (GL) Fix barplot legend + annotate noise floor + make it NOT a barplot… (look up whether sns can change this easily!) + Run same dist/angle plotting for 120kHz<br>- (MK) Would be nice to have PROPER calibrations. Will contact Jack Lawrence<br>- (MK) Could narrow beam profile be the reason for getting such small signals from the BAT receiver?<br>- (GL) BAT receiver conclusion is that it does not receive enough signal to get a good calibration<br>- (MK) Reminder that artificial noise contamination is also quite important<br>- (MK) Nice to show Picoscope waveforms of the input signals of a 20/200/2000us blip next to the output signals<br><br>  <br><br>**Actions**<br><br>- Write-up BAT receiver conclusions<br>- Display results in an easy scatter-plot format to get it done faster!<br>- Plot transducer input signal next to CM16 output||
|Sat|||
   

It looks like no meeting this week, but for my own records!  
   
**Plan for Last week**

- Find/Make a Python port or automate Audacity's noise reduction algorithm, because it's much better than anything else available!

Done...sort of. Port of audacity code does roughly what it's supposed to in a manageable amount of time, but there are discrepancies, and it has a tendency to clip the tops off the really short blips. (See below!)

- Calibration experiment graphs

Tabulated data is separated into individual blips for the 'calibration' analysis for the BAT receiver, but I will have to give up on this one as I didn't do a good enough job on the data collection. It might be possible to fit in completing the dataset with recordings in 2 weeks.  
   
Distance and angle plots: added in the noise reduction step, but haven't separated the table for each individual blip yet (copy & paste code from calibration script

- Review Recording plan

Tomorrow's morning job...alongside watering and entering watering data in a spreadsheet.  
   
**Next Week**

- Running improved noise reduction on previous dataset, to test whether it results in any improvement in 'blip extraction' (1 day)
- Running SVM/'classification' algorithms on Khait dataset (2 day job)
- Prepare recording equipment etc. on Friday (0.5 days)
 
Feasibility check for recordings:

1. 30 minutes
2. 10 rush + 15 barley + 5 control = 30 plants
3. = 15hrs /time point
4. = 2 days/time point
5. 15hrs = 2GB * 30 = 60GB/time point
6. If we manage 2 time points
7. = 120GB