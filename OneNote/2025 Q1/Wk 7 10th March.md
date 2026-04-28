- - [ ] Get Calibrated Source/Mic OR Sound Level Meter from Louise (1 day)
- - [ ] Create Experimental plan (1 day)
- - [ ] Record Sounds from Barley (1 day)
- - [x] Poisson Model (0.5 day)
- - [ ] SVM (1 day)
 
People to Email this week:

- - [x] Paul White
- - [ ] Khait
- - [ ] ~~Paul Kemp~~
- - [x] Avisoft
- - [x] Nancy Walker
   

Analysis: Recording of Seeds/GC  
Report: Analysis of Khait dataset (2 days)  
Plan: collection of recording
    
|   |   |   |
|---|---|---|
||Plan|Reflection|
|Mon|Lecture  <br>Code Refactor<br><br>  <br><br>Print & Start Nancy Walker's Thesis|(09.00-11.00) Lecture!  <br>(11.00-12.30) Doing Wilcoxon Test/Poisson model  <br>(13.00-14.45) Refactoring code & writing README ( :( )  <br>==(15.00-16.00) Lab is VERY cluttered today…==  <br>(16.00-17.38) Fiddling around with the README…<br><br>  <br><br>Starting to feel much more like I understand the Git workflow!! It has taken SO LONG!<br><br>  <br><br>New idea|
|Tues|(8.40) Head to Louise to ask for sound level meter (10mins)  <br>(7.40) Ask Claude to extract seed data<br><br>1. calculate correlation between ch1/2<br>2. Compare Energy<br>3. Try threshold<br><br>(9.00) Calculate all statistics in spkit library  <br>(10.00)Calculate MFCC features using librosa  <br>(12.00) Look up attenuation of sound in air calculator|(07.35-11.00) Calculating correlation between ch1/2  <br>(11.00-13.30) Looking at more efficient programming options<br><br>  <br>  <br><br>Generally opened more tabs than closed to today!<br><br>- Looked at 40 second clip of 20-20k Hz youtube sweep in Python easily<br>- Went on to the seed data, but found that Python/Matplotlib crashed!<br>- Spent about 5 hrs finding out about other programming options…<br>- Read Nancy Walker's Introduction<br><br>  <br><br>**Programming Options:**<br><br>- `libsndfile` and `Kaldi` are the C options (do [TUTORIAL1](https://cindybui.me/pages/blogs/visual_studio_0) & [TUTORIAL2](https://kaldi-asr.org/doc/tutorial_code.htm)l!)<br>- `librosa`, `Essentia`, [Torchaudio](https://www.youtube.com/watch?v=3mju52xBFK8) of which Torch looks promising<br>- Getting familiar with ML methods [sklearn-audio-classification](https://github.com/IliaZenkov/sklearn-audio-classification/blob/master/sklearn_audio_classification.ipynb)<br>  <br><br>  <br>![Embedded YouTube video](https://www.youtube.com/embed/3mju52xBFK8?feature=oembed&autoplay=true)|