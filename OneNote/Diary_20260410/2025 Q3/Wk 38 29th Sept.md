**AIMS**

- Complete basic analysis of xpmt_2_rush dataset
- Get application for Research Filestore space (subproject code: 511019675) done
- Write 1 paragraph of literature review
    
|   |   |   |
|---|---|---|
||Plan|Reflection|
|Mon|AM:<br><br>- - [x] Repeat threshold analysis adding in 'noise_reduction' step for 1 file<br>- - [ ] Repeat it for ALL files!<br>- - [ ] Plan whole week aims (30 mins)<br>- - [ ] Sign up for more demonstrating opportunities<br>- - [ ] Email Paul White<br>  <br><br>  <br>  <br><br>PM:<br><br>- - [x] Look through new recordings using Audacity, then<br>- - [ ] run threshold analysis<br>- - [x] Email Alanis!<br>- - [ ] Water plants<br><br>  <br><br>Rebook passport check|- Progress adding noise_reduction to `snippet_extractFrom1File.py`<br>- Still looking for good threshold to use 'post noise reduction'<br>- Put Tutorial day notes into diary as pictures.<br>- NO AEs in Alanis' recordings but there ARE some in mine, although they are very few. Just need to fill in the VWC data.|
|Tues|Walnut picking (1hr)|AM<br><br>- Downloaded Identiplant materials<br>- Watched youtube video on using FEniCSx<br>- Watched youtube videos on web scraping & climbing<br>- Read 2 x papers<br>- Made beetroot soup<br>- Looked at course to take on CUDA<br><br>  <br><br>PM<br><br>- Made a script to check new threshold values after adding 'noise_reduction' to the pre-processing<br>- Continued to run 'extractFrom1File' on the files from the previous dataset… :(<br><br>  <br><br>Need to:<br><br>1. - [x] Re-write the 'sfLoad' function in 'getNumBlips' so that I can use it on the new dataset from xpmt_2_rush<br>2. - [ ] Rename the old dataset so that it will still work with this naming convention!|
|Weds|- [x] Plantex order (order is ready)  <br>- [x] Apply for research filestore space (again!)  <br>- [x] DENTIST  <br>- [x] Check out why extractFrom1File isn't working anymore! ==Saves first clip, but not the remainders! At least 2 good AEs in 5_p53 (hopefully not ctrl!)==  <br>- [x] Email Alanis!  <br>- [x] Write short summary of vine paper and new paper!|**OLETIC VINES PAPER**<br><br>1. Tests different AE sensors with different sizes and frequency reponses. A broadband sensor is used as reference and eventually a resonant sensor with a 600kHz peak is used with spectral equalisation<br>2. Benchtop 'cut-and-dry' as well as live drying experiments are both done, first in an uncontrolled lab, then at 35degC and 22%RH, which took around 50hrs to dehydrate.<br>3. Solid parametric analysis of the AEs emitted, including identifying 'multicomponent' as well as single component Aes<br><br>FS = 2MHz  <br>N_FFT = 256<br><br>  <br><br>**SAHITH DISEASE DETECTION**<br><br>1. Intro was trash<br>2. Quite a lot of arguably irrelevant references on other applications of deep learning<br>3. Reference to non-existent paper, Jambhulkar et al. (2024). This may be an honest mix up referring to this one [https://www.sciencedirect.com/science/article/pii/S2405844024026781](https://www.sciencedirect.com/science/article/pii/S2405844024026781)?<br>4. 20-100kHz range specified and Bayes Net architecture<br><br>  <br><br>**TEMPORAL & SEASONAL VARIATION**<br><br>1. 140kHz resonant sensor (NF Corp. AE901) + AE9501 pre-amp + HOBO event logger<br>2. AE production times conflict with other papers, suggesting a midday peak<br><br>![Exported image](Exported%20image%2020260410113619-0.png)<br><br>===============================================================  <br>Connected first half of overhead irrigation in market garden + re-hung fallen tomatoes!  <br>Ordered Lion's Mane kit & Truffle oil :)|
|Thurs|- [x] Run extractParallel for all the new files|Fixed bugs in 'snippet_extractFrom1File'  <br>Corrections to 'snippet_extractParallel' (haven't run it yet!)<br><br>  <br><br>Fixed Biolab risk assessment with Jay  <br>Examined several of the rush recordings by eye (results below)  <br>Entered the soil moisture data from Alanis' stuff and pic'ed remaining data  <br>Emailed Alanis<br><br>  <br>  <br><br>============================  <br>Picked walnuts|
|Fri|- - [x] Look for Alanis' stuff<br>-||
|Sat||BAD moment! Found the report plan locally…|
 
20/08:

|   |   |
|---|---|
|3_p8|Ch1, 924s|
|5_p53|680s, checked on both channels 😊. getNumBlips is not catching this one unless you use a simple overlap check between the channels. cross-correlation must be very low. This may be due to the fact that it's energy is up over 200kHz, implying it might be hf noise!|
|17_p17|814.921s/814.951s peaks at over 200kH and appear much more clearly on channel; at 949s there is high frequency noise on channel 1 which does not appear on channel 2|
|18_p17|354s, checked on both channels. Peak near 30kHz|

680*500000 = 340000000

**DONE**

- Analysing whether starting mass helped with survival of the rushes (they’re all dead now!)
- Physical Acoustics Tutorial (advice received J)
- Lots of reading of newer papers (not good papers)
- Biolab risk assessment 
**DOING**

- Analysing AEs from the rushes. Extra noise sources have appeared this time, but there are one or two possible AEs!
- Literature reviewer 
**NOTES**

- (TR) Get first draft report in for next week. Negative results are fine!
- Make a dumping list for things to do post-9-month-review so that they don't become a distraction 
**ACTIONS**

- Post contents-list for Monday evening by 6pm
- Literature review (Tuesday & Wednesday)
- Add Methodology & Results sections on Thursday